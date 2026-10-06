import 'package:duxbe_kds/features/auth/domain/models/business/business_model.dart';
import 'package:duxbe_kds/features/auth/domain/models/role_pemissions/role_pemissions_model.dart';
import 'package:duxbe_kds/features/auth/domain/models/route_item.dart';
import 'package:duxbe_kds/features/auth/domain/models/user/user_model.dart';

import 'package:duxbe_kds/features/auth/domain/repositories/interfaces/auth/i_auth_repository.dart';
import 'package:duxbe_kds/shared/constants/db_constants.dart';
import 'package:duxbe_kds/shared/constants/rpc_constants.dart';
import 'package:duxbe_kds/shared/providers/supabase_provider/supabase_provider.dart';
import 'package:duxbe_kds/shared/utils/exceptions.dart';
import 'package:duxbe_kds/shared/utils/router.dart';
import 'package:flutter/foundation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

part 'auth_repository.g.dart';

@Riverpod(keepAlive: true)
IAuthRepository authRepo(Ref ref) => AuthRepository(ref);

class AuthRepository implements IAuthRepository {
  AuthRepository(this.ref) : _supabaseClient = ref.watch(supabaseProvider);

  final Ref ref;
  final SupabaseClient _supabaseClient;

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
  Future<void> sendOtp(String phone) async {
    try {
      await _supabaseClient.auth.signInWithOtp(phone: phone);
    } on AuthException catch (e) {
      throw AppException(e.message, code: e.statusCode);
    }
  }

  /// Generates a random nonce string for Apple Sign-In.

  /// Returns the sha256 hash of [input] as a hex string.

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
