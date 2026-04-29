import 'package:freezed_annotation/freezed_annotation.dart';

part 'custom_field_model.freezed.dart';
part 'custom_field_model.g.dart';

// This enum should mirror your `public.custom_field_type` in PostgreSQL.
// Ensure the string values here match the ones in your database enum.
enum CustomFieldType { text, number, boolean, date, select, email, url, phone }

/// ------------------------------------------------------------------
/// Class for: `get_custom_field_definitions` function
/// Represents a single custom field definition without any entered values.
/// Perfect for management screens.
/// ------------------------------------------------------------------
@freezed
sealed class CustomFieldDefinition with _$CustomFieldDefinition {
  // This annotation helps convert snake_case from JSON to camelCase in Dart
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory CustomFieldDefinition({
    required String fieldId,
    required String fieldName,
    required CustomFieldType fieldType,
    required bool isRequired,
    required bool isActive, // <<< ADDED THIS
    required DateTime createdAt,
    String? defaultValue,
    // validation_rules is a JSON object, so we map it to Map<String, dynamic>
    Map<String, dynamic>? validationRules,
  }) = _CustomFieldDefinition;

  factory CustomFieldDefinition.fromJson(Map<String, dynamic> json) => _$CustomFieldDefinitionFromJson(json);
}

/// ------------------------------------------------------------------
/// Class for: `get_custom_fields_with_values` function
/// Represents a custom field definition joined with a specific value
/// for a particular entity.
/// ------------------------------------------------------------------
@freezed
sealed class CustomFieldWithValue with _$CustomFieldWithValue {
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory CustomFieldWithValue({
    // --- Definition Properties ---
    required String fieldId,
    required String fieldName,
    required CustomFieldType fieldType,
    required bool isRequired,

    // --- Value Properties (can be null due to LEFT JOIN) ---
    String? entityId,
    String? entityName,
    String? fieldValue,
    DateTime? updatedAt,
  }) = _CustomFieldWithValue;

  factory CustomFieldWithValue.fromJson(Map<String, dynamic> json) => _$CustomFieldWithValueFromJson(json);
}
