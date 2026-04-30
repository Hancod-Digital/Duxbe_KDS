import 'package:duxbe_kds/features/auth/auth.dart';
import 'package:duxbe_kds/features/home/controller/home/home_notifier.dart';
import 'package:duxbe_kds/features/home/controller/home/home_order_lane_notifier.dart';
import 'package:duxbe_kds/features/home/controller/home/home_state.dart';
import 'package:duxbe_kds/features/home/domain/models/home_models.dart';
import 'package:duxbe_kds/features/home/presentation/home/widgets/home_sales_refresh.dart';
import 'package:duxbe_kds/shared/shared.dart';
import 'package:duxbe_kds/shared/widgets/confirmation_dialog.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hancod_theme/hancod_theme.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:intl/intl.dart';

class HomeOrdersBoardMobile extends ConsumerStatefulWidget {
  const HomeOrdersBoardMobile({super.key});

  @override
  ConsumerState<HomeOrdersBoardMobile> createState() =>
      _HomeOrdersBoardMobileState();
}

class _HomeOrdersBoardMobileState extends ConsumerState<HomeOrdersBoardMobile> {
  int _selectedStatusIndex = 0;

  @override
  Widget build(BuildContext context) {
    final boardState = ref.watch(homeProvider);
    final selectedBusiness = ref.watch(selectedBusinessProvider);
    final statuses = sortStatuses(boardState.statuses);

    if (statuses.isEmpty) {
      if (boardState.status == HomeStatus.loading) {
        return const SalesBoardShimmer(isMobile: true);
      }

      return Center(
        child: EmptyWidget(
          text: boardState.error.isNotEmpty
              ? boardState.error
              : context.l10n.noData,
        ),
      );
    }

    if (_selectedStatusIndex >= statuses.length) {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        if (!mounted) return;
        setState(() {
          _selectedStatusIndex = 0;
        });
      });
    }

    final selectedStatusIndex = _selectedStatusIndex
        .clamp(0, statuses.length - 1)
        .toInt();
    final selectedStatus = statuses[selectedStatusIndex];
    final countValues = <String, AsyncValue<int>>{
      for (final status in statuses)
        status.statusId: ref.watch(homeOrderLaneCountProvider(status)),
    };
    final selectedLaneState = ref.watch(homeOrderLaneProvider(selectedStatus));
    final selectedLaneCount = _statusCount(
      countValues[selectedStatus.statusId],
    );
    final isRestaurantBusiness =
        selectedBusiness?.businessType == BusinessType.foodAndBeverage;
    final totalOrders = countValues.values.fold<int>(
      0,
      (count, asyncCount) => count + _statusCount(asyncCount),
    );
    final completedOrders = statuses
        .where((status) => status.isCompleted)
        .fold<int>(
          0,
          (count, status) => count + _statusCount(countValues[status.statusId]),
        );
    final inProgressOrders = totalOrders - completedOrders;

    return Container(
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(30),
        border: Border.all(color: AppColors.white),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: .08),
            blurRadius: 24,
            offset: const Offset(0, 12),
          ),
        ],
      ),
      padding: const EdgeInsets.fromLTRB(14, 16, 14, 12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          _SummaryRow(
            totalOrders: totalOrders,
            inProgressOrders: inProgressOrders,
            completedOrders: completedOrders,
          ),
          const SizedBox(height: 14),
          Row(
            children: [
              Expanded(
                child: ReactiveText<String>(
                  formControlName: 'search_query',
                  onChanged: (control) => ref
                      .read(homeProvider.notifier)
                      .setSearchQuery(control.value ?? ''),
                  decoration: InputDecoration(
                    hintText: 'Search by customer, table, order...',
                    prefixIcon: const Icon(Icons.search_rounded),
                    filled: true,
                    fillColor: AppColors.white,
                    contentPadding: const EdgeInsets.symmetric(
                      horizontal: 14,
                      vertical: 14,
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(18),
                      borderSide: BorderSide(
                        color: AppColors.greyBorder.withValues(alpha: .96),
                      ),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(18),
                      borderSide: BorderSide(
                        color: AppColors.greyBorder.withValues(alpha: .96),
                      ),
                    ),
                    focusedBorder: const OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(18)),
                      borderSide: BorderSide(color: AppColors.brandViolet),
                    ),
                  ),
                ),
              ),
              const SizedBox(width: 10),
              Tooltip(
                message: 'Refresh orders',
                child: Material(
                  color: AppColors.white,
                  borderRadius: BorderRadius.circular(18),
                  child: InkWell(
                    onTap: () => refreshHomeSalesBoard(ref, statuses),
                    borderRadius: BorderRadius.circular(18),
                    child: const SizedBox(
                      height: 54,
                      width: 54,
                      child: Icon(
                        Icons.refresh_rounded,
                        color: AppColors.brandViolet,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 18),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                for (var index = 0; index < statuses.length; index++) ...[
                  _StatusTabChip(
                    status: statuses[index],
                    count: _statusCount(countValues[statuses[index].statusId]),
                    isSelected: index == _selectedStatusIndex,
                    onTap: () {
                      setState(() {
                        _selectedStatusIndex = index;
                      });
                    },
                  ),
                  if (index != statuses.length - 1) const SizedBox(width: 8),
                ],
              ],
            ),
          ),
          const SizedBox(height: 12),
          _StatusBanner(status: selectedStatus, count: selectedLaneCount),
          const SizedBox(height: 12),
          Expanded(
            child: PagingListener(
              controller: selectedLaneState.pagingController,
              builder: (context, pagingState, fetchNextPage) {
                return PagedListView<int, KdsSale>(
                  key: ValueKey(selectedStatus.statusId),
                  keyboardDismissBehavior:
                      ScrollViewKeyboardDismissBehavior.onDrag,
                  state: pagingState,
                  fetchNextPage: fetchNextPage,
                  padding: const EdgeInsets.only(bottom: 8),
                  builderDelegate: PagedChildBuilderDelegate<KdsSale>(
                    firstPageProgressIndicatorBuilder: (context) {
                      return const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 2),
                        child: LaneContentShimmer(isMobile: true),
                      );
                    },
                    newPageProgressIndicatorBuilder: (context) {
                      return const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 2),
                        child: LaneContentShimmer(isMobile: true, itemCount: 2),
                      );
                    },
                    noItemsFoundIndicatorBuilder: (context) {
                      if (boardState.searchQuery.trim().isNotEmpty) {
                        return const EmptyWidget(text: 'No matching orders');
                      }

                      return EmptyWidget(text: context.l10n.noData);
                    },
                    itemBuilder: (context, order, index) {
                      final isLast =
                          (pagingState.items?.length ?? 0) - 1 == index;
                      return Padding(
                        padding: EdgeInsets.only(bottom: isLast ? 0 : 12),
                        child: _MobileOrderCard(
                          order: order,
                          status: selectedStatus,
                          isRestaurantBusiness: isRestaurantBusiness,
                          onTap: () {
                            Navigator.of(context).push(
                              MaterialPageRoute<void>(
                                builder: (context) => HomeOrderDetailsScreen(
                                  order: order,
                                  status: selectedStatus,
                                  availableStatuses: statuses,
                                  isRestaurantBusiness: isRestaurantBusiness,
                                  onMoveOrder: (orderId, nextStatus) {
                                    ref
                                        .read(homeProvider.notifier)
                                        .moveOrder(orderId, nextStatus);
                                  },
                                ),
                              ),
                            );
                          },
                        ),
                      );
                    },
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

class _SummaryRow extends StatelessWidget {
  const _SummaryRow({
    required this.totalOrders,
    required this.inProgressOrders,
    required this.completedOrders,
  });

  final int totalOrders;
  final int inProgressOrders;
  final int completedOrders;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: _SummaryCard(
            label: 'Total orders',
            value: totalOrders.toString(),
            valueColor: AppColors.brandViolet,
          ),
        ),
        const SizedBox(width: 8),
        Expanded(
          child: _SummaryCard(
            label: 'In progress',
            value: inProgressOrders.toString(),
            valueColor: const Color(0xffC46A00),
          ),
        ),
        const SizedBox(width: 8),
        Expanded(
          child: _SummaryCard(
            label: 'Completed',
            value: completedOrders.toString(),
            valueColor: const Color(0xff2F8F46),
          ),
        ),
      ],
    );
  }
}

class _SummaryCard extends StatelessWidget {
  const _SummaryCard({
    required this.label,
    required this.value,
    required this.valueColor,
  });

  final String label;
  final String value;
  final Color valueColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 12),
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(18),
        border: Border.all(color: AppColors.greyBorder.withValues(alpha: .95)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            label,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: AppText.xSmallN.copyWith(color: AppColors.greyText),
          ),
          const SizedBox(height: 6),
          FittedBox(
            fit: BoxFit.scaleDown,
            child: Text(value, style: AppText.sb24.copyWith(color: valueColor)),
          ),
        ],
      ),
    );
  }
}

class _StatusTabChip extends StatelessWidget {
  const _StatusTabChip({
    required this.status,
    required this.count,
    required this.isSelected,
    required this.onTap,
  });

  final Status status;
  final int count;
  final bool isSelected;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    final labelColor = isSelected ? status.color : AppColors.greyText;

    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(14),
      child: Padding(
        padding: const EdgeInsets.only(bottom: 2),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  status.label,
                  style: AppText.mediumSB.copyWith(color: labelColor),
                ),
                const SizedBox(width: 6),
                Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 6,
                    vertical: 2,
                  ),
                  decoration: BoxDecoration(
                    color: status.softColor,
                    borderRadius: BorderRadius.circular(999),
                  ),
                  child: Text(
                    '$count',
                    style: AppText.xSmallSB.copyWith(color: status.color),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 8),
            AnimatedContainer(
              duration: const Duration(milliseconds: 180),
              height: 3,
              width: 72,
              decoration: BoxDecoration(
                color: isSelected ? status.color : Colors.transparent,
                borderRadius: BorderRadius.circular(999),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _StatusBanner extends StatelessWidget {
  const _StatusBanner({required this.status, required this.count});

  final Status status;
  final int count;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
      decoration: BoxDecoration(
        color: status.softColor,
        borderRadius: BorderRadius.circular(16),
        border: Border(left: BorderSide(color: status.color, width: 3)),
      ),
      child: Text(
        '${status.label} — $count orders',
        style: AppText.mediumSB.copyWith(color: status.color),
      ),
    );
  }
}

class _MobileOrderCard extends StatelessWidget {
  const _MobileOrderCard({
    required this.order,
    required this.status,
    required this.isRestaurantBusiness,
    required this.onTap,
  });

  final KdsSale order;
  final Status status;
  final bool isRestaurantBusiness;
  final VoidCallback onTap;

  String get _initials {
    final parts = order.customerNameLabel.trim().split(RegExp(r'\s+'));
    if (parts.isEmpty) return 'K';
    final first = parts.first.isEmpty ? 'K' : parts.first[0];
    if (parts.length == 1) return first.toUpperCase();
    final last = parts.last.isEmpty ? 'K' : parts.last[0];
    return '$first$last'.toUpperCase();
  }

  String get _timeLabel => DateFormat('MMM d • h:mm a').format(order.placedAt);

  @override
  Widget build(BuildContext context) {
    final tableLabel =
        isRestaurantBusiness && (order.tableName?.trim().isNotEmpty ?? false)
        ? 'Table : ${order.tableName!.trim()}'
        : order.tableLabel;

    return Material(
      color: Colors.transparent,
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(18),
        child: Container(
          decoration: BoxDecoration(
            color: AppColors.white,
            borderRadius: BorderRadius.circular(18),
            border: Border.all(
              color: AppColors.greyBorder.withValues(alpha: .95),
            ),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withValues(alpha: .05),
                blurRadius: 12,
                offset: const Offset(0, 6),
              ),
            ],
          ),
          padding: const EdgeInsets.all(14),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 40,
                    width: 40,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: status.softColor,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Text(
                      _initials,
                      style: AppText.mediumSB.copyWith(color: status.color),
                    ),
                  ),
                  const SizedBox(width: 10),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          order.customerNameLabel,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: AppText.mediumSB.copyWith(
                            color: AppColors.title,
                          ),
                        ),
                        const SizedBox(height: 2),
                        Text(
                          'Order ${order.orderNo}',
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: AppText.smallN.copyWith(
                            color: AppColors.greyText,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(width: 10),
                  Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 10,
                      vertical: 4,
                    ),
                    decoration: BoxDecoration(
                      color: status.softColor,
                      borderRadius: BorderRadius.circular(999),
                    ),
                    child: Text(
                      status.label,
                      style: AppText.xSmallSB.copyWith(color: status.color),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 12),
              Row(
                children: [
                  Icon(Icons.fiber_manual_record, size: 8, color: status.color),
                  const SizedBox(width: 6),
                  Expanded(
                    child: Text(
                      tableLabel,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: AppText.mediumSB.copyWith(color: AppColors.title),
                    ),
                  ),
                  const SizedBox(width: 8),
                  Text(
                    _timeLabel,
                    style: AppText.xSmallN.copyWith(color: AppColors.greyText),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              Wrap(
                alignment: WrapAlignment.start,
                runAlignment: WrapAlignment.start,
                crossAxisAlignment: WrapCrossAlignment.start,
                spacing: 8,
                runSpacing: 8,
                children: [
                  for (final item in order.items.take(4))
                    _OrderChip(label: item.displayLabel),
                  if (order.items.length > 4)
                    _OrderChip(label: '+${order.items.length - 4} more'),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _OrderChip extends StatelessWidget {
  const _OrderChip({required this.label});

  final String label;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 8),
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(999),
        border: Border.all(color: AppColors.greyBorder.withValues(alpha: .85)),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: .04),
            blurRadius: 8,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Text(
        label,
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
        style: AppText.smallSB.copyWith(color: AppColors.greyText),
      ),
    );
  }
}

class HomeOrderDetailsScreen extends StatelessWidget {
  const HomeOrderDetailsScreen({
    required this.order,
    required this.status,
    required this.availableStatuses,
    required this.isRestaurantBusiness,
    required this.onMoveOrder,
    super.key,
  });

  final KdsSale order;
  final Status status;
  final List<Status> availableStatuses;
  final bool isRestaurantBusiness;
  final void Function(String orderId, Status status) onMoveOrder;

  @override
  Widget build(BuildContext context) {
    final actionStatuses = sortStatuses(
      availableStatuses.where((nextStatus) {
        return nextStatus.statusId != status.statusId &&
            !_isBookedStatus(nextStatus);
      }),
    );

    return Scaffold(
      backgroundColor: AppColors.greyBorder,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(16, 14, 16, 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              CustomAppBar(title: Text("Order Details")),
              SizedBox(height: 14),
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      _OrderHeroCard(
                        order: order,
                        status: status,
                        isRestaurantBusiness: isRestaurantBusiness,
                      ),
                      const SizedBox(height: 14),
                      _DetailPanel(order: order, status: status),
                      const SizedBox(height: 16),
                    ],
                  ),
                ),
              ),
              if (actionStatuses.isNotEmpty)
                LayoutBuilder(
                  builder: (context, constraints) {
                    final spacing = 10.0;
                    final isCompact = actionStatuses.length <= 3;
                    final buttonWidth = isCompact
                        ? (constraints.maxWidth -
                                  (spacing * (actionStatuses.length - 1))) /
                              actionStatuses.length
                        : (constraints.maxWidth - spacing) / 2;

                    return Wrap(
                      spacing: spacing,
                      runSpacing: spacing,
                      children: [
                        for (final actionStatus in actionStatuses)
                          SizedBox(
                            width: buttonWidth,
                            child: AppButton(
                              width: double.infinity,
                              height: 42,
                              style: ButtonStyles.primary,
                              color: actionStatus.color,
                              borderRadius: BorderRadius.circular(12),
                              padding: const EdgeInsets.symmetric(
                                horizontal: 12,
                              ),
                              label: Text(
                                actionStatus.label,
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                                style: AppText.mediumSB.copyWith(
                                  color: AppColors.white,
                                ),
                              ),
                              onPress: () => showDialog<void>(
                                context: context,
                                builder: (dialogContext) => ConfirmationDialog(
                                  title:
                                      'Change status to ${actionStatus.label}?',
                                  positiveText: 'Confirm',
                                  negativeText: context.l10n.cancel,
                                  children: [
                                    Text(
                                      'This order will be moved from ${status.label} to ${actionStatus.label}.',
                                      style: AppText.mediumN.copyWith(
                                        color: AppColors.primaryColor,
                                      ),
                                    ),
                                  ],
                                  onPositive: (ref) {
                                    Navigator.of(
                                      dialogContext,
                                      rootNavigator: true,
                                    ).pop();
                                    onMoveOrder(order.saleId, actionStatus);
                                    Navigator.of(context).pop();
                                    Alert.showSnackBar(
                                      'Moved order to ${actionStatus.label}',
                                      type: SnackBarType.success,
                                    );
                                  },
                                ),
                              ),
                            ),
                          ),
                      ],
                    );
                  },
                ),
            ],
          ),
        ),
      ),
    );
  }
}

class _OrderHeroCard extends StatelessWidget {
  const _OrderHeroCard({
    required this.order,
    required this.status,
    required this.isRestaurantBusiness,
  });

  final KdsSale order;
  final Status status;
  final bool isRestaurantBusiness;

  String get _initials {
    final parts = order.customerNameLabel.trim().split(RegExp(r'\s+'));
    if (parts.isEmpty) return 'K';
    final first = parts.first.isEmpty ? 'K' : parts.first[0];
    if (parts.length == 1) return first.toUpperCase();
    final last = parts.last.isEmpty ? 'K' : parts.last[0];
    return '$first$last'.toUpperCase();
  }

  @override
  Widget build(BuildContext context) {
    final tableLabel =
        isRestaurantBusiness && (order.tableName?.trim().isNotEmpty ?? false)
        ? 'Table : ${order.tableName!.trim()}'
        : order.tableLabel;

    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(22),
        border: Border.all(color: status.color),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(16, 16, 16, 12),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 46,
                  width: 46,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: status.color,
                    borderRadius: BorderRadius.circular(999),
                  ),
                  child: Text(
                    _initials,
                    style: AppText.mediumSB.copyWith(color: AppColors.white),
                  ),
                ),
                const SizedBox(width: 12),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        order.customerNameLabel,
                        style: AppText.sb20.copyWith(color: AppColors.black),
                      ),
                      const SizedBox(height: 2),
                      Text(
                        'Order ${order.orderNo}',
                        style: AppText.mediumN.copyWith(
                          color: AppColors.greyText,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 10,
                    vertical: 4,
                  ),
                  decoration: BoxDecoration(
                    color: AppColors.white.withValues(alpha: .75),
                    borderRadius: BorderRadius.circular(999),
                  ),
                  child: Text(
                    status.label,
                    style: AppText.xSmallSB.copyWith(color: status.color),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(16, 0, 16, 14),
            child: Row(
              children: [
                Expanded(
                  child: Text(
                    tableLabel,
                    style: AppText.mediumSB.copyWith(color: AppColors.black),
                  ),
                ),
                const SizedBox(width: 8),
                Text(
                  DateFormat('MMM d, yyyy • h:mm a').format(order.placedAt),
                  style: AppText.smallN.copyWith(color: AppColors.greyText),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _DetailPanel extends StatelessWidget {
  const _DetailPanel({required this.order, required this.status});

  final KdsSale order;
  final Status status;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        _DetailInfoCard(order: order, status: status),
        const SizedBox(height: 12),
        _ItemsCard(items: order.items, borderColor: status.color),
        const SizedBox(height: 12),
        _KotHistoryCard(history: order.itemHistory, borderColor: status.color),
      ],
    );
  }
}

class _DetailInfoCard extends StatelessWidget {
  const _DetailInfoCard({required this.order, required this.status});

  final KdsSale order;
  final Status status;

  @override
  Widget build(BuildContext context) {
    final rows = <_DetailRowData>[
      _DetailRowData(
        label: 'Date & time',
        value: DateFormat('MMM d, yyyy • h:mm a').format(order.placedAt),
      ),
      _DetailRowData(
        label: 'Order type',
        value: order.orderType?.trim().isNotEmpty == true
            ? order.orderType!.trim()
            : order.tableLabel,
      ),
      _DetailRowData(label: 'Status', value: status.label),
      _DetailRowData(label: 'Customer', value: order.customerNameLabel),
    ];

    return _DetailSectionCard(
      borderColor: status.color,
      child: Column(
        children: [
          for (var index = 0; index < rows.length; index++) ...[
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: _DetailRow(data: rows[index]),
            ),
            if (index != rows.length - 1)
              Divider(
                height: 1,
                thickness: 1,
                color: Colors.white.withValues(alpha: .08),
              ),
          ],
        ],
      ),
    );
  }
}

class _ItemsCard extends StatelessWidget {
  const _ItemsCard({required this.items, required this.borderColor});

  final List<KdsOrderItem> items;
  final Color borderColor;

  @override
  Widget build(BuildContext context) {
    return _DetailSectionCard(
      borderColor: borderColor,
      child: Padding(
        padding: const EdgeInsets.fromLTRB(14, 14, 14, 12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'Items',
              style: AppText.mediumSB.copyWith(color: AppColors.black),
            ),
            const SizedBox(height: 12),
            if (items.isEmpty)
              Text(
                'No items available',
                style: AppText.smallN.copyWith(color: AppColors.greyText),
              )
            else
              Column(
                children: [
                  for (var index = 0; index < items.length; index++) ...[
                    _OrderItemTile(item: items[index]),
                    if (index != items.length - 1)
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 8),
                        child: Divider(
                          height: 1,
                          thickness: 1,
                          color: AppColors.greyBorder.withValues(alpha: .55),
                        ),
                      ),
                  ],
                ],
              ),
          ],
        ),
      ),
    );
  }
}

class _KotHistoryCard extends StatelessWidget {
  const _KotHistoryCard({required this.history, required this.borderColor});

  final List<KdsOrderHistoryEntry> history;
  final Color borderColor;

  @override
  Widget build(BuildContext context) {
    return _DetailSectionCard(
      borderColor: borderColor,
      child: Padding(
        padding: const EdgeInsets.fromLTRB(14, 14, 14, 12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'KOT History',
              style: AppText.mediumSB.copyWith(color: AppColors.black),
            ),
            const SizedBox(height: 12),
            if (history.isEmpty)
              Text(
                'No KOT history available',
                style: AppText.smallN.copyWith(color: AppColors.greyText),
              )
            else
              Column(
                children: [
                  for (var index = 0; index < history.length; index++) ...[
                    _KotHistoryEntryTile(entry: history[index], index: index),
                    if (index != history.length - 1)
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10),
                        child: Divider(
                          height: 1,
                          thickness: 1,
                          color: AppColors.greyBorder.withValues(alpha: .55),
                        ),
                      ),
                  ],
                ],
              ),
          ],
        ),
      ),
    );
  }
}

class _DetailSectionCard extends StatelessWidget {
  const _DetailSectionCard({required this.borderColor, required this.child});

  final Color borderColor;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(22),
        border: Border.all(color: borderColor),
      ),
      child: child,
    );
  }
}

class _OrderItemTile extends StatelessWidget {
  const _OrderItemTile({required this.item});

  final KdsOrderItem item;

  @override
  Widget build(BuildContext context) {
    final note = item.note?.trim() ?? '';

    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Wrap(
          spacing: 6,
          runSpacing: 6,
          children: [
            // for (final item in entry.items)
            _OrderChip(label: item.displayLabel),
          ],
        ),

        if (note.isNotEmpty) ...[
          const SizedBox(height: 6),
          Padding(
            padding: const EdgeInsets.only(left: 40),
            child: Text(
              'Note: $note',
              style: AppText.smallN.copyWith(
                color: AppColors.greyText.withValues(alpha: .92),
              ),
            ),
          ),
        ],
      ],
    );
  }
}

class _KotHistoryEntryTile extends StatelessWidget {
  const _KotHistoryEntryTile({required this.entry, required this.index});

  final KdsOrderHistoryEntry entry;
  final int index;

  @override
  Widget build(BuildContext context) {
    final timeLabel = entry.orderTime == null
        ? 'KOT ${index + 1}'
        : DateFormat('MMM d, yyyy • h:mm a').format(entry.orderTime!);

    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: AppColors.greyBorder.withValues(alpha: .16),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Row(
            children: [
              Expanded(
                child: Text(
                  timeLabel,
                  style: AppText.smallSB.copyWith(color: AppColors.black),
                ),
              ),
              Text(
                '${entry.items.length} item${entry.items.length == 1 ? '' : 's'}',
                style: AppText.xSmallN.copyWith(color: AppColors.greyText),
              ),
            ],
          ),
          const SizedBox(height: 10),
          if (entry.items.isEmpty)
            Text(
              'No items available',
              style: AppText.smallN.copyWith(color: AppColors.greyText),
            )
          else
            Wrap(
              spacing: 6,
              runSpacing: 6,
              children: [
                for (final item in entry.items)
                  _OrderChip(label: item.displayLabel),
              ],
            ),
        ],
      ),
    );
  }
}

class _DetailRowData {
  const _DetailRowData({required this.label, required this.value});

  final String label;
  final String value;
}

class _DetailRow extends StatelessWidget {
  const _DetailRow({required this.data});

  final _DetailRowData data;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 12),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            width: 104,
            child: Text(
              data.label,
              style: AppText.mediumN.copyWith(color: Colors.black),
            ),
          ),
          const SizedBox(width: 10),
          Expanded(
            child: Text(
              data.value,
              textAlign: TextAlign.right,
              style: AppText.mediumSB.copyWith(color: AppColors.black),
            ),
          ),
        ],
      ),
    );
  }
}

bool _isBookedStatus(Status status) {
  final normalized = <String>{
    status.statusId,
    status.name,
    status.label,
  }.map((value) => value.trim().toLowerCase()).join(' ');

  return normalized.contains('book');
}

int _statusCount(AsyncValue<int>? value) {
  return value?.whenOrNull(data: (count) => count) ?? 0;
}
