import 'package:duxbe_kds/features/auth/auth.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_model.freezed.dart';
part 'user_model.g.dart';

enum Role { admin, staff, customer }

@freezed
sealed class EmployeeModel with _$EmployeeModel {
  @JsonSerializable(explicitToJson: true)
  const factory EmployeeModel({
    @JsonKey(name: 'employee_id') required String employeeId,
    required String name,
    @JsonKey(name: 'org_id') required String orgId,
    String? email,
    String? inviteToken,
    String? phone,
    String? code,
    String? image,
    Role? role,
    @Default(false) bool isInvite,
    @Default([])
    @JsonKey(name: 'employee_roles', includeToJson: false)
    List<EmployeeRoleModel> employeeRoles,
    @Default([])
    @JsonKey(name: 'business_ids', includeToJson: false)
    List<String> businessIds,
    @Default([])
    @JsonKey(name: 'employee_branches_view', includeToJson: false)
    List<EmployeeAccessModel> accessedBrances,
  }) = _EmployeeModel;

  factory EmployeeModel.fromJson(Map<String, dynamic> json) =>
      _$EmployeeModelFromJson(json);
}

@freezed
sealed class EmployeeAccessModel with _$EmployeeAccessModel {
  @JsonSerializable(explicitToJson: true)
  const factory EmployeeAccessModel({
    @JsonKey(name: 'employee_id') required String employeeId,
    @JsonKey(name: 'business_id') required String businessId,
    @JsonKey(name: 'org_id') required String orgId,
    @JsonKey(name: 'name') required String name,
    @JsonKey(name: 'business_type') required BusinessType businessType,
    Business? business,
  }) = _EmployeeAccessModel;

  factory EmployeeAccessModel.fromJson(Map<String, dynamic> json) =>
      _$EmployeeAccessModelFromJson(json);

  factory EmployeeAccessModel.empty() => const EmployeeAccessModel(
    employeeId: '',
    businessId: '',
    orgId: '',
    name: '',
    businessType: BusinessType.retail,
  );
}

@freezed
sealed class EmployeeRoleModel with _$EmployeeRoleModel {
  @JsonSerializable(explicitToJson: true)
  const factory EmployeeRoleModel({
    @JsonKey(name: 'role_id') required String roleId,
    @JsonKey(name: 'role_name') required String name,
    @JsonKey(name: 'business_id') String? businessId,
  }) = _EmployeeRoleModel;

  factory EmployeeRoleModel.fromJson(Map<String, dynamic> json) =>
      _$EmployeeRoleModelFromJson(json);
}

@freezed
sealed class BusinessTeamMember with _$BusinessTeamMember {
  const factory BusinessTeamMember({
    required String id,
    required String name,
    @JsonKey(name: 'system_role') required String systemRole,
    required String status,
    @JsonKey(name: 'business_id') required String businessId,
    @JsonKey(name: 'created_at') required DateTime createdAt,
    String? email,
    String? phone,
    String? image,
    @JsonKey(name: 'invite_token') String? inviteToken,
    @JsonKey(name: 'employee_roles') @Default([]) List<String> employeeRoles,
  }) = _BusinessTeamMember;
  const BusinessTeamMember._();

  factory BusinessTeamMember.fromJson(Map<String, dynamic> json) =>
      _$BusinessTeamMemberFromJson(json);

  bool get isActive => status == 'active';
  bool get isPending => status == 'pending';
  bool get isExpired => status == 'expired';
  bool get isInvite => isPending || isExpired;

  EmployeeModel fromBusinessTeamMember() {
    return EmployeeModel(
      employeeId: id,
      name: name,
      email: email,
      phone: phone,
      orgId: '',
      image: image,
      role: systemRole == 'admin' ? Role.admin : Role.staff,
      employeeRoles: [],
      businessIds: [],
      accessedBrances: [],
      isInvite: isInvite,
      inviteToken: inviteToken,
    );
  }
}

@freezed
sealed class TokenResponse with _$TokenResponse {
  @JsonSerializable(explicitToJson: true)
  const factory TokenResponse({
    @JsonKey(name: 'token') required String token,
    @JsonKey(name: 'org_id') String? orgId,
    @JsonKey(name: 'user_id') String? userId,
  }) = _TokenResponse;

  factory TokenResponse.fromJson(Map<String, dynamic> json) =>
      _$TokenResponseFromJson(json);
}

@freezed
sealed class CreateBusinessResponse with _$CreateBusinessResponse {
  @JsonSerializable(explicitToJson: true)
  const factory CreateBusinessResponse({
    @JsonKey(name: 'status') required String status,
    @JsonKey(name: 'org_id') required String orgId,
    @JsonKey(name: 'business_id') required String businessId,
    @JsonKey(name: 'employee_code') required String employeeCode,
  }) = _CreateBusinessResponse;

  factory CreateBusinessResponse.fromJson(Map<String, dynamic> json) =>
      _$CreateBusinessResponseFromJson(json);
}
