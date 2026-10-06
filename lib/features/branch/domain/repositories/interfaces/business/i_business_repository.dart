import 'package:duxbe_kds/features/auth/auth.dart';
import 'package:duxbe_kds/features/branch/branch.dart';
import 'package:duxbe_kds/shared/models/country_model/country_model.dart';
import 'package:duxbe_kds/shared/models/paginated_response.dart';

abstract class IBusinessRepository {
  Future<Business?> getBusinessWithId({required String businessId});
  Future<void> deleteBusiness(String businessId);
  Future<Business> upsertBusiness(Map<String, dynamic> data, {dynamic image});
  Future<PaginatedResponse<Business>> getBusinesses({
    required int pageSize,
    required int pageNumber,
    String query = '',
  });
  Future<List<FiscalYear>> getFiscalYears();
  Future<WhatsappIntegration> editWhatsappIntegration(
    WhatsappIntegration settings,
  );
  Future<List<Country>> getCountries({String? query});
  Future<List<CountryState>> getStates({String? query, String? country});
  Future<(DateTime, DateTime)?> getCurrentFiscalPeriod(String? businessId);
  Future<Country> getCountryByIso({required String id});
  Future<Business> updateTaxSettings({required Map<String, dynamic> data});
  Future<Business> updatePrintSettings({required Map<String, dynamic> data});
  Future<Business> updateGeneralSettings({required Map<String, dynamic> data});

  /// Replace all printer configurations for a business
  Future<Map<String, dynamic>> replacePrinterConfigurations({
    required String businessId,
    required List<Map<String, dynamic>> printerConfigs,
  });

  /// Get all printer configurations for a business
  Future<List<Map<String, dynamic>>> getPrinterConfigurations({
    required String businessId,
  });
  Future<bool> checkUniqueStoreName({required String storeName});
}
