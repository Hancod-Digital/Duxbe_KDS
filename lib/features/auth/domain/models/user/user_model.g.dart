// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_EmployeeModel _$EmployeeModelFromJson(
  Map<String, dynamic> json,
) => _EmployeeModel(
  employeeId: json['employee_id'] as String,
  name: json['name'] as String,
  orgId: json['org_id'] as String,
  email: json['email'] as String?,
  inviteToken: json['inviteToken'] as String?,
  phone: json['phone'] as String?,
  code: json['code'] as String?,
  image: json['image'] as String?,
  role: $enumDecodeNullable(_$RoleEnumMap, json['role']),
  isInvite: json['isInvite'] as bool? ?? false,
  employeeRoles:
      (json['employee_roles'] as List<dynamic>?)
          ?.map((e) => EmployeeRoleModel.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const [],
  businessIds:
      (json['business_ids'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList() ??
      const [],
  accessedBrances:
      (json['employee_branches_view'] as List<dynamic>?)
          ?.map((e) => EmployeeAccessModel.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const [],
);

Map<String, dynamic> _$EmployeeModelToJson(_EmployeeModel instance) =>
    <String, dynamic>{
      'employee_id': instance.employeeId,
      'name': instance.name,
      'org_id': instance.orgId,
      'email': instance.email,
      'inviteToken': instance.inviteToken,
      'phone': instance.phone,
      'code': instance.code,
      'image': instance.image,
      'role': _$RoleEnumMap[instance.role],
      'isInvite': instance.isInvite,
    };

const _$RoleEnumMap = {
  Role.admin: 'admin',
  Role.staff: 'staff',
  Role.customer: 'customer',
};

_EmployeeAccessModel _$EmployeeAccessModelFromJson(Map<String, dynamic> json) =>
    _EmployeeAccessModel(
      employeeId: json['employee_id'] as String,
      businessId: json['business_id'] as String,
      orgId: json['org_id'] as String,
      name: json['name'] as String,
      businessType: $enumDecode(_$BusinessTypeEnumMap, json['business_type']),
      business: json['business'] == null
          ? null
          : Business.fromJson(json['business'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$EmployeeAccessModelToJson(
  _EmployeeAccessModel instance,
) => <String, dynamic>{
  'employee_id': instance.employeeId,
  'business_id': instance.businessId,
  'org_id': instance.orgId,
  'name': instance.name,
  'business_type': _$BusinessTypeEnumMap[instance.businessType]!,
  'business': instance.business?.toJson(),
};

const _$BusinessTypeEnumMap = {
  BusinessType.retail: 'retail',
  BusinessType.automotive: 'automotive',
  BusinessType.foodAndBeverage: 'foodAndBeverage',
  BusinessType.others: 'others',
};

_EmployeeRoleModel _$EmployeeRoleModelFromJson(Map<String, dynamic> json) =>
    _EmployeeRoleModel(
      roleId: json['role_id'] as String,
      name: json['role_name'] as String,
      businessId: json['business_id'] as String?,
    );

Map<String, dynamic> _$EmployeeRoleModelToJson(_EmployeeRoleModel instance) =>
    <String, dynamic>{
      'role_id': instance.roleId,
      'role_name': instance.name,
      'business_id': instance.businessId,
    };

_BusinessTeamMember _$BusinessTeamMemberFromJson(Map<String, dynamic> json) =>
    _BusinessTeamMember(
      id: json['id'] as String,
      name: json['name'] as String,
      systemRole: json['system_role'] as String,
      status: json['status'] as String,
      businessId: json['business_id'] as String,
      createdAt: DateTime.parse(json['created_at'] as String),
      email: json['email'] as String?,
      phone: json['phone'] as String?,
      image: json['image'] as String?,
      inviteToken: json['invite_token'] as String?,
      employeeRoles:
          (json['employee_roles'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
    );

Map<String, dynamic> _$BusinessTeamMemberToJson(_BusinessTeamMember instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'system_role': instance.systemRole,
      'status': instance.status,
      'business_id': instance.businessId,
      'created_at': instance.createdAt.toIso8601String(),
      'email': instance.email,
      'phone': instance.phone,
      'image': instance.image,
      'invite_token': instance.inviteToken,
      'employee_roles': instance.employeeRoles,
    };

_TokenResponse _$TokenResponseFromJson(Map<String, dynamic> json) =>
    _TokenResponse(
      token: json['token'] as String,
      orgId: json['org_id'] as String?,
      userId: json['user_id'] as String?,
    );

Map<String, dynamic> _$TokenResponseToJson(_TokenResponse instance) =>
    <String, dynamic>{
      'token': instance.token,
      'org_id': instance.orgId,
      'user_id': instance.userId,
    };

_CreateBusinessResponse _$CreateBusinessResponseFromJson(
  Map<String, dynamic> json,
) => _CreateBusinessResponse(
  status: json['status'] as String,
  orgId: json['org_id'] as String,
  businessId: json['business_id'] as String,
  employeeCode: json['employee_code'] as String,
);

Map<String, dynamic> _$CreateBusinessResponseToJson(
  _CreateBusinessResponse instance,
) => <String, dynamic>{
  'status': instance.status,
  'org_id': instance.orgId,
  'business_id': instance.businessId,
  'employee_code': instance.employeeCode,
};
