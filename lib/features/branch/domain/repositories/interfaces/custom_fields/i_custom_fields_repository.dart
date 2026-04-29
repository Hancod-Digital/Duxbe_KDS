import 'package:duxbe_kds/features/branch/branch.dart';

abstract class ICustomFieldsRepository {
  Future<List<CustomFieldDefinition>> getCustomFields(CustomFieldEntityType entityType);
  Future<CustomFieldDefinition> createCustomField(CustomFieldDefinition customField, CustomFieldEntityType entityType);
  Future<CustomFieldDefinition> updateCustomField(CustomFieldDefinition customField);
  Future<void> deleteCustomField(String fieldId);
  Future<void> updateCustomFieldStatus(String fieldId, bool status);
  Future<void> updateCustomFieldMandatory(String fieldId, bool mandatory);
}
