import 'package:duxbe_kds/features/auth/auth.dart';
import 'package:duxbe_kds/shared/shared.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hancod_theme/hancod_theme.dart';
import 'package:reactive_forms/reactive_forms.dart';

class BusinessSwitcher extends ConsumerStatefulWidget {
  const BusinessSwitcher({
    super.key,
    this.width = 260,
    this.isLightTheme = false,
  });

  final double width;
  final bool isLightTheme;

  @override
  ConsumerState<BusinessSwitcher> createState() => _BusinessSwitcherState();
}

class _BusinessSwitcherState extends ConsumerState<BusinessSwitcher> {
  late final FormGroup _formGroup = FormGroup({
    'selected_business_id': FormControl<String?>(),
  });

  bool _syncScheduled = false;

  String _businessName(EmployeeAccessModel business) {
    return business.business?.name ?? business.name;
  }

  List<DropDownItems<String?>> _buildItems(
    List<EmployeeAccessModel> businesses,
  ) {
    return businesses
        .map(
          (business) => DropDownItems<String?>(
            value: business.businessId,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 4),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    _businessName(business),
                    overflow: TextOverflow.ellipsis,
                    style: AppText.mediumM.copyWith(color: AppColors.black),
                  ),
                  const SizedBox(height: 2),
                  Text(
                    business.businessType.title,
                    overflow: TextOverflow.ellipsis,
                    style: AppText.smallN.copyWith(color: AppColors.greyText),
                  ),
                ],
              ),
            ),
          ),
        )
        .toList();
  }

  void _scheduleSync(List<EmployeeAccessModel> businesses) {
    if (_syncScheduled || !mounted) return;
    _syncScheduled = true;
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _syncScheduled = false;
      if (!mounted) return;

      final selectedBusiness = ref.read(selectedBusinessProvider);
      final selectedBusinessId = selectedBusiness?.businessId;
      final control =
          _formGroup.control('selected_business_id') as FormControl<String?>;
      final availableIds = businesses
          .map((business) => business.businessId)
          .toSet();

      if (availableIds.isEmpty) {
        if (control.value != null) {
          control.patchValue(null);
        }
        return;
      }

      final targetBusinessId = availableIds.contains(selectedBusinessId)
          ? selectedBusinessId
          : businesses.first.businessId;

      if (control.value != targetBusinessId) {
        control.patchValue(targetBusinessId);
      }

      final targetBusiness = businesses.firstWhere(
        (business) => business.businessId == targetBusinessId,
      );
      if (selectedBusinessId != targetBusinessId ||
          selectedBusiness == null ||
          selectedBusiness.business == null) {
        ref.read(selectedBusinessProvider.notifier).business = targetBusiness;
      }
    });
  }

  void _handleChange(String? businessId, List<EmployeeAccessModel> businesses) {
    if (businessId == null) return;
    final selectedBusiness = businesses.firstWhere(
      (business) => business.businessId == businessId,
      orElse: () => businesses.first,
    );
    ref.read(selectedBusinessProvider.notifier).business = selectedBusiness;
  }

  @override
  Widget build(BuildContext context) {
    final employeeDetails = ref.watch(employeeDetailsProvider);
    final businesses =
        employeeDetails.value?.accessedBrances ?? const <EmployeeAccessModel>[];
    final isLightTheme = widget.isLightTheme;
    final fieldFillColor = isLightTheme
        ? AppColors.white
        : AppColors.white.withValues(alpha: .08);
    final fieldBorderColor = isLightTheme
        ? AppColors.textfieldOutline
        : AppColors.white.withValues(alpha: .14);
    final fieldTextColor = isLightTheme ? AppColors.title : AppColors.white;
    final fieldIconColor = isLightTheme
        ? AppColors.greyText
        : AppColors.white.withValues(alpha: .9);

    if (employeeDetails.hasValue) {
      _scheduleSync(businesses);
    }

    final items = _buildItems(businesses);
    final hasBusinesses = items.isNotEmpty;

    return SizedBox(
      width: widget.width,
      child: ReactiveForm(
        formGroup: _formGroup,
        child: ReactiveDropdown<String?>(
          formControlName: 'selected_business_id',
          items: items,
          isExpanded: true,
          readOnly: !hasBusinesses,

          hint: Text(
            employeeDetails.isLoading
                ? 'Loading businesses...'
                : context.l10n.noBusinessesAvailable,
          ),
          validationMessages: const {},
          decoration: InputDecoration(
            filled: true,
            fillColor: fieldFillColor,
            contentPadding: const EdgeInsets.symmetric(
              horizontal: 16,
              vertical: 14,
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(14),
              borderSide: BorderSide(color: fieldBorderColor),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(14),
              borderSide: BorderSide(color: fieldBorderColor),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(14),
              borderSide: const BorderSide(color: AppColors.brandViolet),
            ),
          ),
          style: AppText.mediumM.copyWith(color: fieldTextColor),
          dropdownColor: AppColors.white,
          icon: Icon(Icons.keyboard_arrow_down_rounded, color: fieldIconColor),
          selectedItemBuilder: (context) {
            return businesses
                .map(
                  (business) => Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      _businessName(business),
                      overflow: TextOverflow.ellipsis,
                      style: AppText.mediumM.copyWith(color: fieldTextColor),
                    ),
                  ),
                )
                .toList();
          },
          onChanged: hasBusinesses
              ? (control) => _handleChange(control.value, businesses)
              : null,
        ),
      ),
    );
  }
}
