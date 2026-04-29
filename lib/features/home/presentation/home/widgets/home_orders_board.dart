import 'package:duxbe_kds/features/auth/auth.dart';
import 'package:duxbe_kds/features/home/controller/home/home_notifier.dart';
import 'package:duxbe_kds/features/home/domain/models/home_models.dart';
import 'package:duxbe_kds/shared/shared.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hancod_theme/hancod_theme.dart';
import 'package:intl/intl.dart';
import 'package:reactive_forms/reactive_forms.dart';

class HomeOrdersBoard extends ConsumerStatefulWidget {
  const HomeOrdersBoard({super.key});

  @override
  ConsumerState<HomeOrdersBoard> createState() => _HomeOrdersBoardState();
}

class _HomeOrdersBoardState extends ConsumerState<HomeOrdersBoard> {
  late final FormGroup _formGroup = FormGroup({
    'search_query': FormControl<String>(value: ''),
  });

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) => _syncBusiness());
  }

  void _syncBusiness() {
    if (!mounted) return;
    final selectedBusiness = ref.read(selectedBusinessProvider);
    ref
        .read(homeProvider.notifier)
        .loadForBusiness(
          businessId: selectedBusiness?.businessId,
          businessName:
              selectedBusiness?.business?.name ??
              selectedBusiness?.name ??
              'Kitchen',
        );
  }

  void _handleSearch(String value) {
    ref.read(homeProvider.notifier).setSearchQuery(value);
  }

  @override
  Widget build(BuildContext context) {
    ref.listen<String?>(
      selectedBusinessProvider.select((value) => value?.businessId),
      (previous, next) => _syncBusiness(),
    );

    final boardState = ref.watch(homeProvider);
    final selectedBusiness = ref.watch(selectedBusinessProvider);
    final groupedOrders = boardState.groupedOrders;
    final totalOrders = boardState.filteredOrders.length;
    final inProgressOrders =
        groupedOrders[KitchenOrderStatus.newOrders]!.length +
        groupedOrders[KitchenOrderStatus.cooking]!.length +
        groupedOrders[KitchenOrderStatus.readyToServe]!.length;

    return ReactiveForm(
      formGroup: _formGroup,
      child: Container(
        decoration: BoxDecoration(
          color: AppColors.white,
          borderRadius: BorderRadius.circular(30),
          border: Border.all(color: AppColors.white),
        ),
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Kitchen Board',
                        style: AppText.b32.copyWith(color: AppColors.white),
                      ),
                      const SizedBox(height: 6),
                      Text(
                        'Drag orders between statuses to update the board.',
                        style: AppText.largeN.copyWith(
                          color: AppColors.white.withValues(alpha: .74),
                        ),
                      ),
                      const SizedBox(height: 12),
                      Text(
                        selectedBusiness?.business?.name ??
                            selectedBusiness?.name ??
                            'No business selected',
                        style: AppText.mediumSB.copyWith(
                          color: AppColors.white.withValues(alpha: .86),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(width: 20),
                Wrap(
                  spacing: 12,
                  runSpacing: 12,
                  children: [
                    _SummaryPill(
                      label: 'Total Orders',
                      value: totalOrders.toString(),
                    ),
                    _SummaryPill(
                      label: 'In Progress',
                      value: inProgressOrders.toString(),
                    ),
                    _SummaryPill(
                      label: 'Completed',
                      value: groupedOrders[KitchenOrderStatus.completed]!.length
                          .toString(),
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 18),
            ReactiveText<String>(
              formControlName: 'search_query',
              // label: 'Search order',
              onChanged: (control) => _handleSearch(control.value ?? ''),
              decoration: InputDecoration(
                hintText: 'Search by customer, table, order number, or item',
                prefixIcon: Icon(Icons.search),
                filled: true,
                fillColor: AppColors.white.withValues(alpha: .08),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(16),
                  borderSide: BorderSide(
                    color: AppColors.brandViolet.withValues(alpha: .12),
                  ),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(16),
                  borderSide: BorderSide(
                    color: AppColors.brandViolet.withValues(alpha: .12),
                  ),
                ),
                focusedBorder: const OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(16)),
                  borderSide: BorderSide(color: AppColors.brandViolet),
                ),
              ),
            ),
            const SizedBox(height: 18),
            Expanded(
              child: LayoutBuilder(
                builder: (context, constraints) {
                  final statuses = KitchenOrderStatus.values;
                  final isStacked = constraints.maxWidth < 900;

                  if (isStacked) {
                    return SingleChildScrollView(
                      child: Column(
                        children: [
                          for (var index = 0; index < statuses.length; index++)
                            Padding(
                              padding: EdgeInsets.only(
                                bottom: index == statuses.length - 1 ? 0 : 12,
                              ),
                              child: SizedBox(
                                height: 280,
                                child: _OrderLane(
                                  status: statuses[index],
                                  orders:
                                      groupedOrders[statuses[index]] ??
                                      const [],
                                  onDropOrder: (orderId) {
                                    ref
                                        .read(homeProvider.notifier)
                                        .moveOrder(orderId, statuses[index]);
                                    Alert.showSnackBar(
                                      'Moved order to ${statuses[index].label}',
                                      type: SnackBarType.success,
                                    );
                                  },
                                ),
                              ),
                            ),
                        ],
                      ),
                    );
                  }

                  return Row(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      for (var index = 0; index < statuses.length; index++)
                        Expanded(
                          child: Padding(
                            padding: EdgeInsets.only(
                              right: index == statuses.length - 1 ? 0 : 12,
                            ),
                            child: _OrderLane(
                              status: statuses[index],
                              orders:
                                  groupedOrders[statuses[index]] ?? const [],
                              onDropOrder: (orderId) {
                                ref
                                    .read(homeProvider.notifier)
                                    .moveOrder(orderId, statuses[index]);
                                Alert.showSnackBar(
                                  'Moved order to ${statuses[index].label}',
                                  type: SnackBarType.success,
                                );
                              },
                            ),
                          ),
                        ),
                    ],
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _SummaryPill extends StatelessWidget {
  const _SummaryPill({required this.label, required this.value});

  final String label;
  final String value;

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: const BoxConstraints(minWidth: 120),
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      decoration: BoxDecoration(
        color: AppColors.brandViolet.withValues(alpha: .08),
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: AppColors.white.withValues(alpha: .10)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            label,
            style: AppText.smallN.copyWith(color: AppColors.brandViolet),
          ),
          const SizedBox(height: 4),
          Text(
            value,
            style: AppText.sb20.copyWith(color: AppColors.brandViolet),
          ),
        ],
      ),
    );
  }
}

class _OrderLane extends StatelessWidget {
  const _OrderLane({
    required this.status,
    required this.orders,
    required this.onDropOrder,
  });

  final KitchenOrderStatus status;
  final List<KitchenOrderItem> orders;
  final ValueChanged<String> onDropOrder;

  @override
  Widget build(BuildContext context) {
    return DragTarget<String>(
      onWillAcceptWithDetails: (details) => details.data.isNotEmpty,
      onAcceptWithDetails: (details) => onDropOrder(details.data),
      builder: (context, candidateData, rejectedData) {
        final isTargeted = candidateData.isNotEmpty;
        return AnimatedContainer(
          duration: const Duration(milliseconds: 180),
          decoration: BoxDecoration(
            color: isTargeted
                ? status.color.withValues(alpha: .10)
                : AppColors.greyBorder.withValues(alpha: .06),
            borderRadius: BorderRadius.circular(22),
            border: Border.all(
              color: isTargeted
                  ? status.color
                  : AppColors.white.withValues(alpha: .10),
              width: isTargeted ? 2 : 1,
            ),
          ),
          padding: const EdgeInsets.all(14),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(height: 5, color: status.color),
              Container(
                decoration: BoxDecoration(
                  color: status.color.withValues(alpha: .2),
                ),
                padding: EdgeInsets.all(12),
                child: Row(
                  children: [
                    Expanded(
                      child: Text(
                        status.label,
                        style: AppText.mediumSB.copyWith(
                          color: AppColors.black,
                        ),
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 10,
                        vertical: 4,
                      ),
                      decoration: BoxDecoration(
                        color: status.color.withValues(alpha: .18),
                        borderRadius: BorderRadius.circular(999),
                      ),
                      child: Text(
                        orders.length.toString(),
                        style: AppText.smallSB.copyWith(color: AppColors.white),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 12),
              Expanded(
                child: orders.isEmpty
                    ? Center(
                        child: Text(
                          'Drop here',
                          style: AppText.smallN.copyWith(
                            color: AppColors.white.withValues(alpha: .55),
                          ),
                        ),
                      )
                    : Container(
                        decoration: BoxDecoration(
                          color: AppColors.greyBorder,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: ListView.separated(
                          itemCount: orders.length,
                          padding: EdgeInsets.all(10),
                          physics: const BouncingScrollPhysics(),
                          separatorBuilder: (_, __) =>
                              const SizedBox(height: 12),
                          itemBuilder: (context, index) {
                            final order = orders[index];
                            return _OrderCard(order: order);
                          },
                        ),
                      ),
              ),
            ],
          ),
        );
      },
    );
  }
}

class _OrderCard extends StatelessWidget {
  const _OrderCard({required this.order});

  final KitchenOrderItem order;

  String get _timeLabel => DateFormat('h:mm a').format(order.placedAt);

  String get _initials {
    final parts = order.customerName.trim().split(RegExp(r'\s+'));
    if (parts.isEmpty) return 'K';
    final first = parts.first.isEmpty ? 'K' : parts.first[0];
    if (parts.length == 1) return first.toUpperCase();
    final last = parts.last.isEmpty ? 'K' : parts.last[0];
    return '$first$last'.toUpperCase();
  }

  @override
  Widget build(BuildContext context) {
    final card = Container(
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(18),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: .10),
            blurRadius: 14,
            offset: const Offset(0, 6),
          ),
        ],
      ),
      padding: const EdgeInsets.all(14),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Container(
                height: 38,
                width: 38,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: order.status.color.withValues(alpha: .16),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Text(
                  _initials,
                  style: AppText.mediumSB.copyWith(color: order.status.color),
                ),
              ),
              const SizedBox(width: 10),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      order.customerName,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: AppText.mediumSB.copyWith(color: AppColors.black),
                    ),
                    const SizedBox(height: 2),
                    Text(
                      'Order ${order.orderNo}',
                      style: AppText.smallN.copyWith(color: AppColors.greyText),
                    ),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(height: 12),
          Text(
            order.tableLabel,
            style: AppText.mediumSB.copyWith(color: AppColors.black),
          ),
          const SizedBox(height: 8),
          Text(
            _timeLabel,
            style: AppText.smallN.copyWith(color: AppColors.greyText),
          ),
          const SizedBox(height: 10),
          ...order.items.map(
            (item) => Padding(
              padding: const EdgeInsets.only(bottom: 4),
              child: Text(
                item,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: AppText.smallN.copyWith(color: AppColors.stormyBlue),
              ),
            ),
          ),
          const SizedBox(height: 10),
          Align(
            alignment: Alignment.centerRight,
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
              decoration: BoxDecoration(
                color: order.status.color.withValues(alpha: .12),
                borderRadius: BorderRadius.circular(999),
              ),
              child: Text(
                order.status.label,
                style: AppText.smallSB.copyWith(color: order.status.color),
              ),
            ),
          ),
        ],
      ),
    );

    if (kIsWeb) {
      return Draggable<String>(
        data: order.id,
        rootOverlay: true,
        dragAnchorStrategy: pointerDragAnchorStrategy,
        feedback: Material(
          color: Colors.transparent,
          child: SizedBox(width: 250, child: card),
        ),
        childWhenDragging: Opacity(opacity: .35, child: card),
        child: card,
      );
    }

    return LongPressDraggable<String>(
      data: order.id,
      rootOverlay: true,
      dragAnchorStrategy: pointerDragAnchorStrategy,
      feedback: Material(
        color: Colors.transparent,
        child: SizedBox(width: 250, child: card),
      ),
      childWhenDragging: Opacity(opacity: .35, child: card),
      child: card,
    );
  }
}
