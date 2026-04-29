import 'package:duxbe_kds/features/auth/auth.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

abstract class IAuthRepository {
  Future<void> forgotPassword(String email);
  Future<AuthResponse> verifyResetPassword(String email, String token);
  Future<UserResponse> createPassword(
    String password, {
    String? token,
    String? refreshToken,
  });
  Future<void> signOut();
  Future<EmployeeModel?> getUserDetails({String? businessId});
  Future<void> deleteAccount();
  Future<List<RouteItem>> getSidebar({required String businessId});
  Future<Business?> getBusinessFromId(String? businessId);
  Future<bool> updateUserPassword(String oldPassword, String newPassword);
  Future<bool> verifyUserPassword(String password);
  Future<void> editEmployee({
    String? name,
    String? email,
    String? phone,
    dynamic image,
  });
  Future<bool> checkUserExists(String? email, String? phone);
  Future<void> sendOtp(String phone);
  Future<void> signInWithGoogle();
  Future<TokenResponse> signInWithGoogleIdToken();
  Future<void> signInWithApple();
  Future<TokenResponse> signInWithAppleIdToken();
  Future<TokenResponse> verify({
    required String type,
    String? email,
    String? password,
    String? phone,
    String? token,
    String? idToken,
    String? accessToken,
    String? nonce,
  });
  Future<CreateBusinessResponse> createBusiness(
    Map<String, dynamic> signUpDetails,
  );
}
