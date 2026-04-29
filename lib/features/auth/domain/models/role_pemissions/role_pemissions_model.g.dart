// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'role_pemissions_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Module _$ModuleFromJson(Map<String, dynamic> json) => _Module(
  id: (json['id'] as num).toInt(),
  url: json['url'] as String,
  name: json['name'] as String,
  permissions: Permissions.fromJson(
    json['permissions'] as Map<String, dynamic>,
  ),
  sortOrder: (json['sort_order'] as num).toInt(),
  description: json['description'] as String?,
  submenus:
      (json['submenus'] as List<dynamic>?)
          ?.map((e) => Submenu.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const [],
);

Map<String, dynamic> _$ModuleToJson(_Module instance) => <String, dynamic>{
  'id': instance.id,
  'url': instance.url,
  'name': instance.name,
  'permissions': instance.permissions,
  'sort_order': instance.sortOrder,
  'description': instance.description,
  'submenus': instance.submenus,
};

_Permissions _$PermissionsFromJson(Map<String, dynamic> json) => _Permissions(
  permissionId: json['permission_id'] as String?,
  add: json['add'] as bool? ?? false,
  edit: json['edit'] as bool? ?? false,
  view: json['view'] as bool? ?? false,
  print: json['print'] as bool? ?? false,
  delete: json['delete'] as bool? ?? false,
);

Map<String, dynamic> _$PermissionsToJson(_Permissions instance) =>
    <String, dynamic>{
      'permission_id': instance.permissionId,
      'add': instance.add,
      'edit': instance.edit,
      'view': instance.view,
      'print': instance.print,
      'delete': instance.delete,
    };

_Submenu _$SubmenuFromJson(Map<String, dynamic> json) => _Submenu(
  id: (json['id'] as num).toInt(),
  url: json['url'] as String,
  linkName: json['link_name'] as String,
  permissions: Permissions.fromJson(
    json['permissions'] as Map<String, dynamic>,
  ),
  sortOrder: (json['sort_order'] as num).toInt(),
  mobileIcon: json['mobile_icon'] as String?,
  visibility: json['visibility'] as bool? ?? true,
);

Map<String, dynamic> _$SubmenuToJson(_Submenu instance) => <String, dynamic>{
  'id': instance.id,
  'url': instance.url,
  'link_name': instance.linkName,
  'permissions': instance.permissions,
  'sort_order': instance.sortOrder,
  'mobile_icon': instance.mobileIcon,
  'visibility': instance.visibility,
};
