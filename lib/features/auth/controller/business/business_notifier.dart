import 'dart:async';
import 'dart:convert';

import 'package:duxbe_kds/features/auth/domain/models/route_item.dart';
import 'package:duxbe_kds/features/auth/domain/models/user/user_model.dart';
import 'package:duxbe_kds/features/auth/domain/repositories/implementations/auth/auth_repository.dart';
import 'package:duxbe_kds/features/branch/domain/repositories/implementations/business/business_repository.dart';
import 'package:duxbe_kds/shared/providers/shared_prefs_provider/shared_prefs_provider.dart';
import 'package:riverpod_annotation/experimental/json_persist.dart';
import 'package:riverpod_annotation/experimental/persist.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'business_notifier.g.dart';

@JsonPersist()
@Riverpod(keepAlive: true)
class SelectedBusiness extends _$SelectedBusiness {
  @override
  EmployeeAccessModel? build() {
    persist(
      ref.watch(storageProvider.future),
      key: 'business',
      encode: (state) => jsonEncode(state?.toJson()),
      decode: (json) {
        final decodedJson = jsonDecode(json) as Map<String, dynamic>?;
        if (decodedJson == null) return null;
        return EmployeeAccessModel.fromJson(decodedJson);
      },
      options: const StorageOptions(
        cacheTime: StorageCacheTime(Duration(days: 50)),
      ),
    );

    // Default state is null (no business selected yet)
    return null;
  }

  set business(EmployeeAccessModel? business) {
    _updateBusiness(business);
  }

  EmployeeAccessModel? get business => state;

  Future<void> _updateBusiness(EmployeeAccessModel? businessInfo) async {
    final businessRepo = ref.watch(businessRepoProvider);
    if (businessInfo == null) {
      state = null;
      return;
    }
    final business = await businessRepo.getBusinessWithId(
      businessId: businessInfo.businessId,
    );
    state = businessInfo.copyWith(business: business);
  }
}

/// This is the main provider for the current user's details.
/// It uses an AsyncNotifier to reactively fetch data based on
/// auth state and the selected business.
@riverpod
class EmployeeDetails extends _$EmployeeDetails {
  @override
  Future<EmployeeModel?> build() async {
    // 1. Depend on the auth state. If the user logs out, this will re-run.
    // 2. Depend on the selected business.
    final selectedBusiness = ref.watch(selectedBusinessProvider);

    // 3. Fetch data using the repository
    final authRepo = ref.watch(authRepoProvider);
    return authRepo.getUserDetails(businessId: selectedBusiness?.businessId);
  }
}

@riverpod
class SidebarRoutes extends _$SidebarRoutes {
  @override
  Future<List<RouteItem>> build() async {
    // 1. Watch the selectedBusinessProvider.
    // If it changes, this `build` method will automatically re-run.
    final selectedBusiness = ref.watch(selectedBusinessProvider);

    // 2. Handle the case where no business is selected yet.
    // In this scenario, the sidebar should be empty.
    if (selectedBusiness == null) {
      return [];
    }

    // 3. Get the repository to fetch the data.
    final authRepo = ref.watch(authRepoProvider);

    // 4. Fetch the sidebar routes using the selected business ID.
    // The result of this future will become the state of the provider.
    return authRepo.getSidebar(businessId: selectedBusiness.businessId);
  }
}
