import 'package:duxbe_kds/features/auth/auth.dart';
import 'package:duxbe_kds/shared/shared.dart';
import 'package:duxbe_kds/shared/utils/assets.gen.dart';
import 'package:duxbe_kds/shared/utils/utils.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hancod_theme/hancod_theme.dart';
import 'package:reactive_forms/reactive_forms.dart';

class ChooseModulesScreenMobile extends ConsumerStatefulWidget {
  const ChooseModulesScreenMobile({super.key, this.register, this.onBack});
  final Function? register;
  final Function? onBack;
  @override
  ConsumerState<ChooseModulesScreenMobile> createState() =>
      _ChooseModulesScreenMobileState();
}

class _ChooseModulesScreenMobileState
    extends ConsumerState<ChooseModulesScreenMobile> {
  Future<void> _signup() async {
    widget.register?.call();
  }

  Future<void> _back() async {
    widget.onBack?.call();
  }

  @override
  Widget build(BuildContext context) {
    final formGroup = ReactiveForm.of(context) as FormGroup?;
    final businessType = formGroup?.control('business_type').value?.toString();

    final state = ref.watch(chooseModulesProvider(businessType));
    final notifier = ref.watch(chooseModulesProvider(businessType).notifier);

    return Scaffold(
      body: LayoutBuilder(
        builder: (context, constraints) {
          return SingleChildScrollView(
            child: ConstrainedBox(
              constraints: BoxConstraints(minHeight: constraints.maxHeight),
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: Assets.images.loginBgMobile.provider(),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Stack(
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        const SizedBox(height: 80),
                        Container(
                          decoration: BoxDecoration(
                            color: const Color(
                              0xff0F255A,
                            ).withValues(alpha: 0.6),
                            borderRadius: BorderRadius.circular(14),
                          ),
                          padding: const EdgeInsets.all(24),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Which modules do you want to enable for your business ?',
                                style: AppText.heading6.copyWith(
                                  color: AppColors.white,
                                ),
                              ),
                              const SizedBox(height: 8),
                              Text(
                                'You can always add more modules later',
                                style: AppText.mediumN.copyWith(
                                  color: AppColors.stormyBlue,
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(height: 28),
                        Container(
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            color: AppColors.white,
                            borderRadius: BorderRadius.circular(14),
                          ),
                          padding: const EdgeInsets.only(
                            left: 24,
                            right: 24,
                            bottom: 24,
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              GridView.count(
                                physics: const NeverScrollableScrollPhysics(),
                                shrinkWrap: true,
                                crossAxisCount: 2,
                                crossAxisSpacing: 12,
                                mainAxisSpacing: 12,
                                childAspectRatio: 1.6,
                                children: state.modules.map((e) {
                                  final isSelected = state.selectedModuleIds
                                      .contains(e.id);
                                  return GestureDetector(
                                    onTap: () => notifier.selectModule(e.id),
                                    child: Container(
                                      padding: const EdgeInsets.symmetric(
                                        vertical: 12,
                                        horizontal: 16,
                                      ),
                                      decoration: BoxDecoration(
                                        color: AppColors.white,
                                        borderRadius: BorderRadius.circular(14),
                                        border: isSelected
                                            ? Border.all(
                                                color: AppColors.brandViolet,
                                              )
                                            : Border.all(
                                                color: AppColors.greyBorder,
                                              ),
                                        boxShadow: const [
                                          BoxShadow(
                                            color: Colors.black12,
                                            blurRadius: 28,
                                            offset: Offset(5, 12),
                                          ),
                                        ],
                                      ),
                                      child: Stack(
                                        clipBehavior: Clip.none,
                                        children: [
                                          Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            mainAxisSize: MainAxisSize.min,
                                            children: [
                                              SizedBox(
                                                height: 24,
                                                width: 24,
                                                child: SvgPicture.asset(
                                                  'assets/icons/${e.url}_unselected.svg',
                                                  colorFilter:
                                                      const ColorFilter.mode(
                                                        AppColors.black,
                                                        BlendMode.srcIn,
                                                      ),
                                                ),
                                              ),
                                              const SizedBox(height: 12),
                                              Text(
                                                e.name,
                                                style: AppText.largeM.copyWith(
                                                  color: AppColors.black,
                                                ),
                                                maxLines: 1,
                                                overflow: TextOverflow.ellipsis,
                                              ),
                                            ],
                                          ),
                                          if (isSelected)
                                            const Positioned(
                                              bottom: 0,
                                              right: 0,
                                              child: Icon(
                                                Icons.check_circle,
                                                color: AppColors.brandViolet,
                                                size: 20,
                                              ),
                                            ),
                                          Positioned(
                                            top: 0,
                                            right: 0,
                                            child: Tooltip(
                                              triggerMode:
                                                  TooltipTriggerMode.tap,
                                              padding: const EdgeInsets.all(12),
                                              richMessage: WidgetSpan(
                                                child: IntrinsicWidth(
                                                  child: Column(
                                                    children: _getModuleDescription(e)
                                                        .map(
                                                          (e) => Row(
                                                            // mainAxisSize: MainAxisSize.min,
                                                            children: [
                                                              const Icon(
                                                                Icons.check,
                                                                color: AppColors
                                                                    .green,
                                                              ),
                                                              const SizedBox(
                                                                width: 8,
                                                              ),
                                                              Text(
                                                                e,
                                                                style: AppText
                                                                    .mediumM
                                                                    .copyWith(
                                                                      color: AppColors
                                                                          .white,
                                                                    ),
                                                              ),
                                                            ],
                                                          ),
                                                        )
                                                        .expand(
                                                          (element) => [
                                                            element,
                                                            const SizedBox(
                                                              height: 16,
                                                            ),
                                                          ],
                                                        )
                                                        .toList(),
                                                  ),
                                                ),
                                              ),
                                              decoration: BoxDecoration(
                                                color: AppColors.primaryColor,
                                                borderRadius:
                                                    BorderRadius.circular(6),
                                                boxShadow: const [
                                                  BoxShadow(
                                                    blurRadius: 10,
                                                    color:
                                                        AppColors.primaryColor,
                                                  ),
                                                ],
                                              ),
                                              child: const Icon(
                                                CupertinoIcons.info,
                                                color: Color(0xffD0D0D0),
                                                size: 16,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  );
                                }).toList(),
                              ),
                              const SizedBox(height: 24),
                              AppButton(
                                isLoading:
                                    ref.watch(authProvider).status ==
                                    AuthStatus.loading,
                                label: Text(context.l10n.continueText),
                                onPress: _signup,
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(height: 40),
                      ],
                    ),
                    if (widget.onBack != null)
                      Positioned(
                        top: 36,
                        left: 0,
                        child: GestureDetector(
                          onTap: _back,
                          child: Container(
                            decoration: BoxDecoration(
                              color: const Color(0xff180759),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            padding: const EdgeInsets.all(9),
                            child: const Icon(
                              Icons.arrow_back_ios_new,
                              color: AppColors.white,
                              size: 16,
                            ),
                          ),
                        ),
                      ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }

  List<String> _getModuleDescription(Module module) {
    switch (module.url) {
      case 'pos':
        return [
          'Process sales transactions quickly and efficiently',
          'Accept multiple payment methods including cash, cards, and digital wallets',
          'Generate receipts and manage customer information',
          'Track daily sales performance and revenue analytics',
          'Handle returns, refunds, and exchange processes seamlessly',
          'Integrate with inventory for real-time stock updates',
        ];
      case 'purchase':
        return [
          'Create and manage purchase orders with supplier details',
          'Track vendor performance and payment histories',
          'Monitor delivery schedules and order fulfillment',
          'Automate procurement workflows and approval processes',
          'Generate purchase reports and cost analysis',
          'Maintain supplier relationships and contact management',
        ];
      case 'table':
        return [
          'Manage table reservations and seating arrangements',
          'Track order status and kitchen communication',
          'Handle table transfers and bill splitting',
          'Monitor table turnover rates and occupancy',
          'Integrate with POS for seamless order processing',
          'Generate dining analytics and customer preferences',
        ];
      case 'inventory':
        return [
          'Track stock levels across multiple locations',
          'Set up automated reorder points and alerts',
          'Manage product categories and variants',
          'Monitor stock movements and transfer history',
          'Generate inventory reports and valuation',
          'Handle batch tracking and expiration dates',
        ];
      case 'accounting':
        return [
          'Manage accounts payable and receivable',
          'Generate financial statements and balance sheets',
          'Track expenses and categorize transactions',
          'Handle tax calculations and compliance',
          'Create budgets and financial forecasts',
          'Integrate with banking and payment systems',
        ];
      case 'reports':
        return [
          'Generate comprehensive business analytics dashboards',
          'Create custom reports for different business metrics',
          'Track sales performance and trends over time',
          'Monitor inventory turnover and profitability',
          'Analyze customer behavior and purchasing patterns',
          'Export reports in multiple formats (PDF, Excel, CSV)',
        ];
      case 'online_store':
        return [
          'Create and manage online product catalogs',
          'Process e-commerce orders and payments',
          'Handle shipping and delivery management',
          'Integrate with social media and marketing platforms',
          'Manage customer accounts and loyalty programs',
          'Track online sales performance and conversion rates',
        ];
      case 'invoice':
        return [
          'Create professional invoices with custom branding',
          'Automate recurring billing and payment reminders',
          'Track payment status and overdue accounts',
          'Generate tax-compliant invoices and receipts',
          'Manage customer credit limits and terms',
          'Integrate with accounting for seamless bookkeeping',
        ];
      default:
        return [
          'Streamline your business operations efficiently',
          'Automate repetitive tasks and workflows',
          'Generate insightful reports and analytics',
          'Improve customer experience and satisfaction',
          'Scale your business with powerful tools',
          'Integrate seamlessly with other modules',
        ];
    }
  }
}
