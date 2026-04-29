import 'dart:convert';
import 'dart:math';

import 'package:crypto/crypto.dart';
import 'package:duxbe_kds/features/auth/domain/models/business/business_model.dart';
import 'package:duxbe_kds/features/auth/domain/models/role_pemissions/role_pemissions_model.dart';
import 'package:duxbe_kds/features/auth/domain/models/route_item.dart';
import 'package:duxbe_kds/features/auth/domain/models/user/user_model.dart';

import 'package:duxbe_kds/features/auth/domain/repositories/interfaces/auth/i_auth_repository.dart';
import 'package:duxbe_kds/shared/constants/db_constants.dart';
import 'package:duxbe_kds/shared/constants/rpc_constants.dart';
import 'package:duxbe_kds/shared/providers/env_provider/env_provider.dart';
import 'package:duxbe_kds/shared/providers/supabase_provider/supabase_provider.dart';
import 'package:duxbe_kds/shared/utils/exceptions.dart';
import 'package:duxbe_kds/shared/utils/router.dart';
import 'package:flutter/foundation.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:sign_in_with_apple/sign_in_with_apple.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

part 'auth_repository.g.dart';

@Riverpod(keepAlive: true)
IAuthRepository authRepo(Ref ref) => AuthRepository(ref);

class AuthRepository implements IAuthRepository {
  AuthRepository(this.ref) : _supabaseClient = ref.watch(supabaseProvider);

  final Ref ref;
  final SupabaseClient _supabaseClient;

  @override
  Future<AuthResponse> verifyResetPassword(String email, String token) async {
    try {
      final resp = await _supabaseClient.auth.verifyOTP(
        type: OtpType.recovery,
        email: email,
        token: token,
        //  saveSession: false,
      );
      return resp;
    } on AuthException catch (e) {
      throw AppException(e.message, code: e.statusCode);
    }
  }

  @override
  Future<void> forgotPassword(String email) async {
    try {
      final environment = ref.read(envProvider);
      final storeUrl = environment.ENV == 'prod'
          ? 'https://business.duxbe.com'
          : 'https://dev.duxbe.com';
      await _supabaseClient.auth.resetPasswordForEmail(
        email,
        redirectTo: '$storeUrl/new_password',
      );
    } on AuthException catch (e) {
      throw AppException(e.message, code: e.statusCode);
    }
  }

  @override
  Future<EmployeeModel?> getUserDetails({String? businessId}) async {
    try {
      if (_supabaseClient.auth.currentUser == null) {
        return null;
      }

      var userModel = _supabaseClient
          .from(DbConstants.employeeView)
          .select(
            '*,organizations!employees_org_id_fkey(*),employee_branches_view(*)',
          )
          .eq('employee_id', _supabaseClient.auth.currentUser!.id)
          .single()
          .withConverter(EmployeeModel.fromJson);
      if (businessId != null && businessId.isNotEmpty) {
        userModel = userModel.setHeader('x-business-id', businessId);
      }
      return await userModel;
    } on PostgrestException catch (e) {
      throw AppException(
        e.message,
        code: e.code,
        details: e.details.toString(),
      );
    }
  }

  @override
  Future<Business?> getBusinessFromId(String? businessId) async {
    try {
      if (_supabaseClient.auth.currentUser == null || businessId == null) {
        return null;
      }
      final business = await _supabaseClient
          .from(DbConstants.businesses)
          .select('*, whatsapp_integration(*)')
          .eq('business_id', businessId)
          .single()
          .withConverter(Business.fromJson);
      return business;
    } on PostgrestException catch (e) {
      throw AppException(
        e.message,
        code: e.code,
        details: e.details.toString(),
      );
    }
  }

  @override
  Future<void> signOut() async {
    await _supabaseClient.auth.signOut();
  }

  @override
  Future<UserResponse> createPassword(
    String password, {
    String? token,
    String? refreshToken,
  }) async {
    try {
      if (refreshToken != null) {
        await _supabaseClient.auth.setSession(refreshToken);
      }
      final userId = _supabaseClient.auth.currentUser!.id;

      if (token != null) {
        await _supabaseClient.rpc<void>(
          'accept_employee_invite',
          params: {'p_invite_token': token, 'p_user_id': userId},
        );
      }

      return await _supabaseClient.auth.updateUser(
        UserAttributes(password: password),
      );
    } on AuthException catch (e) {
      throw AppException(e.message, code: e.statusCode);
    }
  }

  @override
  Future<List<RouteItem>> getSidebar({required String businessId}) async {
    try {
      return await _supabaseClient
          .rpc<PostgrestList>(
            RPCConstants.getSidebar,
            params: {'p_business_id': businessId},
          )
          .withConverter(
            (data) =>
                data
                    .map(Module.fromJson)
                    .toList()
                    .map(
                      (e) => RouteItem(
                        route: e.url,
                        label: e.name,
                        selectedIcon: 'assets/icons/${e.url}_selected.svg',
                        unselectedIcon: 'assets/icons/${e.url}_unselected.svg',
                        mobileIcon: 'assets/icons/${e.url}_mobile.svg',
                        permissions: e.permissions,
                        visibility: e.permissions.view,
                        sortOrder: e.sortOrder,
                        subItems:
                            e.submenus
                                .map(
                                  (e) => RouteItem(
                                    route: e.url,
                                    label: e.linkName,
                                    permissions: e.permissions,
                                    visibility: e.visibility,
                                    sortOrder: e.sortOrder,
                                    selectedIcon:
                                        e.mobileIcon ??
                                        'assets/icons/${'settings'}_selected.svg',
                                  ),
                                )
                                .toList()
                              ..sort(
                                (sortA, sortB) =>
                                    sortA.sortOrder.compareTo(sortB.sortOrder),
                              )
                              ..removeWhere(
                                (element) => !element.permissions.view,
                              ),
                      ),
                    )
                    .toList()
                  ..sort(
                    (sortA, sortB) =>
                        sortA.sortOrder.compareTo(sortB.sortOrder),
                  )
                  ..removeWhere((element) => !element.permissions.view),
          );
    } on PostgrestException catch (e) {
      throw AppException(
        e.message,
        code: e.code,
        details: e.details.toString(),
      );
    }
  }

  @override
  Future<bool> updateUserPassword(
    String oldPassword,
    String newPassword,
  ) async {
    try {
      if (await verifyUserPassword(oldPassword)) {
        await ref
            .read(supabaseProvider)
            .auth
            .updateUser(UserAttributes(password: newPassword));
      } else {
        throw AppException(AppRouter.l10n.oldPasswordDoesnTMatch);
      }
      return true;
    } on AuthException catch (e) {
      throw AppException(e.message, code: e.statusCode, details: e.toString());
    }
  }

  @override
  Future<bool> verifyUserPassword(String password) async {
    try {
      final response = await _supabaseClient.rpc<bool>(
        RPCConstants.verifyUserPassword,
        params: {'password': password},
      );
      return response;
    } on FunctionException catch (e) {
      throw AppException(
        e.details?['error'].toString() ?? 'Something went wrong',
        code: e.status,
        details: e.reasonPhrase?.toString(),
      );
    }
  }

  @override
  Future<void> editEmployee({
    String? name,
    String? email,
    String? phone,
    dynamic image,
  }) async {
    try {
      if (phone != null) {
        await _supabaseClient.auth.updateUser(UserAttributes(phone: phone));
      }

      String? url;
      if (image is Uint8List) {
        final fileName = _supabaseClient.auth.currentUser!.id;
        // url = await ref
        //     .read(supabaseStorageProvider)
        //     .uploadOrgImage(
        //       fileName: fileName,
        //       filePath: 'employee',
        //       file: image,
        //     );
      }

      final updates = <String, dynamic>{if (name != null) 'name': name};

      if (image is Uint8List) {
        updates['image'] = url;
      } else if (image == null) {
        updates['image'] = null;
      } else if (image is String && image.trim().isNotEmpty) {
        updates['image'] = image;
      }

      await ref
          .read(supabaseProvider)
          .from(DbConstants.employees)
          .update(updates)
          .eq('employee_id', _supabaseClient.auth.currentUser!.id);
    } on AuthException catch (e) {
      throw AppException(e.message, code: e.statusCode, details: e.toString());
    } on PostgrestException catch (e) {
      throw AppException(
        e.message,
        code: e.code,
        details: e.details.toString(),
      );
    }
  }

  @override
  Future<bool> checkUserExists(String? email, String? phone) async {
    final response = await _supabaseClient.rpc<PostgrestList>(
      'check_user_exists',
      params: {'p_email': email, 'p_phone': phone},
    );

    if (response.isEmpty) {
      return false;
    }

    final userEmail = response[0]['email'];
    final userPhone = response[0]['phone'];

    if (userPhone != null &&
        phone != null &&
        userPhone != phone.replaceAll('+', '')) {
      throw const AppException(
        'Phone number mismatch',
        details: 'This provided number is already attached with another email',
      );
    }

    if (userEmail != null && userEmail != email) {
      throw const AppException(
        'Email mismatch',
        details: 'The provided email is already attached with another phone',
      );
    }
    final user = await _supabaseClient
        .from(DbConstants.employeeView)
        .select('employee_id')
        .or('email.eq.$email,phone.eq.${phone?.replaceAll('+', '')}');
    if (user.isEmpty) {
      return false;
    }
    return true;
  }

  @override
  Future<void> deleteAccount() async {
    try {
      final _ = await _supabaseClient.functions.invoke(
        'employees/delete-duxbe-account',
        body: {
          'refresh_token': _supabaseClient.auth.currentSession?.refreshToken,
          'access_token': _supabaseClient.auth.currentSession?.accessToken,
        },
      );
      return;
    } on FunctionException catch (e) {
      throw AppException(
        e.details?['error'].toString() ?? 'Something went wrong',
        code: e.status,
        details: e.reasonPhrase?.toString(),
      );
    }
  }

  @override
  Future<CreateBusinessResponse> createBusiness(
    Map<String, dynamic> signUpDetails,
  ) async {
    try {
      final businessPayload = {
        'name': signUpDetails['name'] ?? 'Business Name',
        'user_name': signUpDetails['name'],
        'email': signUpDetails['email'],
        'phone_number': signUpDetails['phone_number'],
        'business_type': signUpDetails['business_type'],
        'currency': signUpDetails['currency'],
        'other_business_type': signUpDetails['business_type_others'],
      };

      final response = await _supabaseClient.rpc<PostgrestMap>(
        'create_business',
        params: {
          'p_business_data': businessPayload,
          'p_uid': _supabaseClient.auth.currentUser?.id,
        },
      );

      return CreateBusinessResponse.fromJson(response);
    } on AuthException catch (e) {
      throw AppException(e.message, code: e.statusCode, details: e.toString());
    } on PostgrestException catch (e) {
      throw AppException(
        e.message,
        code: e.code,
        details: e.details.toString(),
      );
    }
  }

  @override
  Future<void> sendOtp(String phone) async {
    try {
      await _supabaseClient.auth.signInWithOtp(phone: phone);
    } on AuthException catch (e) {
      throw AppException(e.message, code: e.statusCode);
    }
  }

  @override
  Future<void> signInWithGoogle() async {
    try {
      final environment = ref.read(envProvider);
      final storeUrl = environment.ENV == 'prod'
          ? 'https://business.duxbe.com/oauth_callback'
          : 'https://dev.duxbe.com/oauth_callback';

      // On web, use Supabase OAuth redirect flow
      await _supabaseClient.auth.signInWithOAuth(
        OAuthProvider.google,
        redirectTo: storeUrl,
      );
    } on AuthException catch (e) {
      throw AppException(e.message, code: e.statusCode);
    } catch (e) {
      throw AppException(e.toString());
    }
  }

  @override
  Future<TokenResponse> signInWithGoogleIdToken() async {
    try {
      // On native (Android/iOS), use the new google_sign_in API
      const webClientId =
          '141463328504-at2cjaid4b59nppeanj47gb5t4a5h7rm.apps.googleusercontent.com';
      const iosClientId =
          '141463328504-nuqs9jasre1jc67n3fle3829m9vr0u6k.apps.googleusercontent.com';

      final signIn = GoogleSignIn.instance;

      // Initialize with client IDs
      await signIn.initialize(
        clientId: iosClientId,
        serverClientId: webClientId,
      );

      // Authenticate the user (shows native sign-in UI)
      // authenticate() returns GoogleSignInAccount directly
      final user = await signIn.authenticate(scopeHint: ['email', 'profile']);

      // Get the ID token from the authenticated user
      final idToken = user.authentication.idToken;

      if (idToken == null) {
        throw const AppException('No ID Token found.');
      }

      // Request authorization scopes to get the access token
      final scopes = ['email', 'profile'];
      final authorization =
          await user.authorizationClient.authorizationForScopes(scopes) ??
          await user.authorizationClient.authorizeScopes(scopes);

      final tokenResponse = await verify(
        type: 'google',
        idToken: idToken,
        accessToken: authorization.accessToken,
      );

      return tokenResponse;
    } on AuthException catch (e) {
      throw AppException(e.message, code: e.statusCode);
    } on GoogleSignInException catch (e) {
      if (e.code == GoogleSignInExceptionCode.canceled) {
        // User canceled, don't throw
        throw const AppException('Google Sign-In canceled');
      }
      throw AppException('Google Sign-In error: ${e.description}');
    } catch (e) {
      throw AppException(e.toString());
    }
  }

  /// Generates a random nonce string for Apple Sign-In.
  String _generateNonce([int length = 32]) {
    const charset =
        '0123456789ABCDEFGHIJKLMNOPQRSTUVXYZabcdefghijklmnopqrstuvwxyz-._';
    final random = Random.secure();
    return List.generate(
      length,
      (_) => charset[random.nextInt(charset.length)],
    ).join();
  }

  /// Returns the sha256 hash of [input] as a hex string.
  String _sha256ofString(String input) {
    final bytes = utf8.encode(input);
    final digest = sha256.convert(bytes);
    return digest.toString();
  }

  @override
  Future<void> signInWithApple() async {
    try {
      final environment = ref.read(envProvider);
      final storeUrl = environment.ENV == 'prod'
          ? 'https://business.duxbe.com/oauth_callback'
          : 'https://dev.duxbe.com/oauth_callback';

      // For Android, Web, Windows and Linux use OAuth
      await _supabaseClient.auth.signInWithOAuth(
        OAuthProvider.apple,
        authScreenLaunchMode: kIsWeb
            ? LaunchMode.platformDefault
            : LaunchMode.externalApplication,
        redirectTo: kIsWeb ? null : storeUrl, // Provide your callback URL
      );
    } on AuthException catch (e) {
      throw AppException(e.message, code: e.statusCode);
    } catch (e) {
      throw AppException(e.toString());
    }
  }

  @override
  Future<TokenResponse> signInWithAppleIdToken() async {
    try {
      // Generate a raw nonce and its SHA-256 hash
      final rawNonce = _generateNonce();
      final hashedNonce = _sha256ofString(rawNonce);

      // Request Apple credential natively
      final credential = await SignInWithApple.getAppleIDCredential(
        scopes: [
          AppleIDAuthorizationScopes.email,
          AppleIDAuthorizationScopes.fullName,
        ],
        nonce: hashedNonce,
      );

      final idToken = credential.identityToken;
      if (idToken == null) {
        throw const AppException('No ID Token found from Apple Sign-In.');
      }

      // Sign in to Supabase with the Apple ID token and raw nonce
      final tokenResponse = await verify(
        type: 'apple',
        idToken: idToken,
        nonce: rawNonce,
      );

      return tokenResponse;
    } on SignInWithAppleAuthorizationException catch (e) {
      if (e.code == AuthorizationErrorCode.canceled) {
        // User canceled, don't throw
        throw const AppException('Apple Sign-In canceled');
      }
      throw AppException('Apple Sign-In error: ${e.message}');
    } on AuthException catch (e) {
      throw AppException(e.message, code: e.statusCode);
    } catch (e) {
      throw AppException(e.toString());
    }
  }

  @override
  Future<TokenResponse> verify({
    required String type,
    String? email,
    String? password,
    String? phone,
    String? token,
    String? idToken,
    String? accessToken,
    String? nonce,
  }) async {
    try {
      final response = await _supabaseClient.functions.invoke(
        'employees/verify',
        body: {
          'type': type,
          if (email != null) 'email': email,
          if (password != null) 'password': password,
          if (phone != null) 'phone': phone,
          if (token != null) 'token': token,
          if (idToken != null) 'idToken': idToken,
          if (accessToken != null) 'accessToken': accessToken,
          if (nonce != null) 'nonce': nonce,
        },
      );

      return TokenResponse.fromJson(response.data as Map<String, dynamic>);
    } on FunctionException catch (e) {
      final details = e.details;
      throw AppException(
        details is Map
            ? details['error']?.toString() ?? 'Something went wrong'
            : 'Something went wrong',
        code: e.status,
        details: details is Map
            ? details['details']?.toString()
            : e.reasonPhrase?.toString(),
      );
    } catch (e) {
      throw AppException(e.toString());
    }
  }
}
