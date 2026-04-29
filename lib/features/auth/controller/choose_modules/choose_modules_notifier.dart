import 'package:duxbe_kds/features/auth/auth.dart';
import 'package:duxbe_kds/features/branch/domain/repositories/interfaces/customize_modules/customize_modules_interface.dart';
import 'package:duxbe_kds/shared/utils/alert.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hancod_theme/hancod_theme.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'choose_modules_notifier.freezed.dart';
part 'choose_modules_notifier.g.dart';
part 'choose_modules_state.dart';

@Riverpod(keepAlive: true)
class ChooseModulesNotifier extends _$ChooseModulesNotifier {
  late final ICustomizeModulesRepository _repository;

  @override
  ChooseModulesState build(String? businessType) {
    Future.microtask(() => getModules(businessType));
    return ChooseModulesState.initial();
  }

  Future<void> getModules(String? businessType) async {
    state = state.copyWith(status: ChooseModulesStatus.loading);
    try {
      final modules = await _repository.getAllModules();
      state = state.copyWith(
        status: ChooseModulesStatus.success,
        modules: modules.where((module) {
          if (businessType != 'foodAndBeverage') {
            return ![
              'dashboard',
              'settings',
              'users',
              'table',
              'item_list',
            ].contains(module.url);
          }

          return ![
            'dashboard',
            'settings',
            'users',
            'item_list',
          ].contains(module.url);
        }).toList(),
        selectedModuleIds: modules
            .where((module) {
              if (businessType != 'foodAndBeverage') {
                return module.url != 'table';
              }
              return true;
            })
            .map((module) => module.id)
            .toList(),
      );
    } catch (e) {
      state = state.copyWith(
        status: ChooseModulesStatus.error,
        error: e.toString(),
      );
    }
  }

  Future<void> savePreferences({required String businessId}) async {
    try {
      await _repository.saveModulePreferencesWithIds(
        modules: state.modules,
        selectedModuleIds: state.selectedModuleIds,
        businessId: businessId,
      );
      Alert.showSnackBar('Preferences saved!', type: SnackBarType.success);
      state = state.copyWith(status: ChooseModulesStatus.success);
    } catch (e) {
      state = state.copyWith(
        status: ChooseModulesStatus.error,
        error: e.toString(),
      );
    }
  }

  void selectModule(int moduleId) {
    final selectedModuleIds = List<int>.from(state.selectedModuleIds);
    if (selectedModuleIds.contains(moduleId)) {
      selectedModuleIds.remove(moduleId);
    } else {
      selectedModuleIds.add(moduleId);
    }
    state = state.copyWith(selectedModuleIds: selectedModuleIds);
  }

  void toggleAllSubmenus(int moduleId, bool isVisible) {
    if (state.status == ChooseModulesStatus.success) {
      final modules = state.modules;
      final updatedModules = modules.map((module) {
        if (module.id == moduleId) {
          final updatedSubmenus = module.submenus.map((submenu) {
            return submenu.copyWith(visibility: isVisible);
          }).toList();
          return module.copyWith(submenus: updatedSubmenus);
        }
        return module;
      }).toList();
      state = state.copyWith(modules: updatedModules);
    }
  }
}
