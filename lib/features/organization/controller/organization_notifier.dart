import 'dart:async';
import 'dart:convert';

import 'package:duxbe_kds/features/auth/controller/business/business_notifier.dart';
import 'package:duxbe_kds/features/auth/domain/models/user/user_model.dart';
import 'package:duxbe_kds/features/organization/models/organization.dart';
import 'package:duxbe_kds/features/organization/repository/organization_repository.dart';
import 'package:duxbe_kds/shared/providers/shared_prefs_provider/shared_prefs_provider.dart';
import 'package:riverpod_annotation/experimental/json_persist.dart';
import 'package:riverpod_annotation/experimental/persist.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'organization_notifier.g.dart';

@JsonPersist()
@Riverpod(keepAlive: true)
class OrganizationNotifier extends _$OrganizationNotifier {
  late IOrganizationRepository _organizationRepository;

  @override
  OrganizationDetails? build() {
    _organizationRepository = ref.watch(orgRepoProvider);

    persist(
      ref.watch(storageProvider.future),
      key: 'organization',
      encode: (state) => jsonEncode(state?.toJson()),
      decode: (json) {
        final decoded = jsonDecode(json);
        if (decoded is! Map<String, dynamic>) return null;
        return OrganizationDetails.fromJson(decoded);
      },
      options: const StorageOptions(
        cacheTime: StorageCacheTime(Duration(days: 50)),
      ),
    );

    ref.listen(employeeDetailsProvider, (previous, next) {
      if (previous?.value?.orgId != next.value?.orgId) {
        Future.microtask(() => _loadOrganizationFromAuthState(next.value));
      }
    });
    Future.microtask(
      () => _loadOrganizationFromAuthState(
        ref.read(employeeDetailsProvider).value,
      ),
    );

    return null;
  }

  Future<void> _loadOrganizationFromAuthState(EmployeeModel? authState) async {
    final orgId = authState?.orgId;
    if (orgId == null || orgId.isEmpty) {
      state = null;
      return;
    }

    final organization = await _organizationRepository.getOrganizationFromId(
      orgId,
    );
    if (organization == null) return;

    if (state != organization) {
      state = organization;
    }

    // await loginRevenueCatToOrganization(ref, orgId);
  }

  Future<void> refresh() async {
    await _loadOrganizationFromAuthState(
      ref.read(employeeDetailsProvider).value,
    );
  }
}
