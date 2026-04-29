import 'package:duxbe_kds/features/auth/domain/models/role_pemissions/role_pemissions_model.dart';

abstract class ICustomizeModulesRepository {
  /// Fetches all modules and their sub-links for the customization screen.
  /// This should return all modules, regardless of user permissions or saved preferences.
  Future<List<Module>> getAllModules();

  /// Saves the module and link preferences for a business.
  /// The input list contains the updated visibility and sort order.
  Future<void> saveModulePreferences({required List<Module> modules});

  Future<void> saveModulePreferencesWithIds(
      {required List<Module> modules, required List<int> selectedModuleIds, required String businessId});
}
