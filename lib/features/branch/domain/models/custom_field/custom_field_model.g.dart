// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'custom_field_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CustomFieldDefinition _$CustomFieldDefinitionFromJson(
  Map<String, dynamic> json,
) => _CustomFieldDefinition(
  fieldId: json['field_id'] as String,
  fieldName: json['field_name'] as String,
  fieldType: $enumDecode(_$CustomFieldTypeEnumMap, json['field_type']),
  isRequired: json['is_required'] as bool,
  isActive: json['is_active'] as bool,
  createdAt: DateTime.parse(json['created_at'] as String),
  defaultValue: json['default_value'] as String?,
  validationRules: json['validation_rules'] as Map<String, dynamic>?,
);

Map<String, dynamic> _$CustomFieldDefinitionToJson(
  _CustomFieldDefinition instance,
) => <String, dynamic>{
  'field_id': instance.fieldId,
  'field_name': instance.fieldName,
  'field_type': _$CustomFieldTypeEnumMap[instance.fieldType]!,
  'is_required': instance.isRequired,
  'is_active': instance.isActive,
  'created_at': instance.createdAt.toIso8601String(),
  'default_value': instance.defaultValue,
  'validation_rules': instance.validationRules,
};

const _$CustomFieldTypeEnumMap = {
  CustomFieldType.text: 'text',
  CustomFieldType.number: 'number',
  CustomFieldType.boolean: 'boolean',
  CustomFieldType.date: 'date',
  CustomFieldType.select: 'select',
  CustomFieldType.email: 'email',
  CustomFieldType.url: 'url',
  CustomFieldType.phone: 'phone',
};

_CustomFieldWithValue _$CustomFieldWithValueFromJson(
  Map<String, dynamic> json,
) => _CustomFieldWithValue(
  fieldId: json['field_id'] as String,
  fieldName: json['field_name'] as String,
  fieldType: $enumDecode(_$CustomFieldTypeEnumMap, json['field_type']),
  isRequired: json['is_required'] as bool,
  entityId: json['entity_id'] as String?,
  entityName: json['entity_name'] as String?,
  fieldValue: json['field_value'] as String?,
  updatedAt: json['updated_at'] == null
      ? null
      : DateTime.parse(json['updated_at'] as String),
);

Map<String, dynamic> _$CustomFieldWithValueToJson(
  _CustomFieldWithValue instance,
) => <String, dynamic>{
  'field_id': instance.fieldId,
  'field_name': instance.fieldName,
  'field_type': _$CustomFieldTypeEnumMap[instance.fieldType]!,
  'is_required': instance.isRequired,
  'entity_id': instance.entityId,
  'entity_name': instance.entityName,
  'field_value': instance.fieldValue,
  'updated_at': instance.updatedAt?.toIso8601String(),
};
