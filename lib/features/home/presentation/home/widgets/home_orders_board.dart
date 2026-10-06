import 'package:duxbe_kds/features/auth/auth.dart';
import 'package:duxbe_kds/features/home/controller/home/home_order_lane_notifier.dart';
import 'package:duxbe_kds/features/home/controller/home/home_notifier.dart';
import 'package:duxbe_kds/features/home/controller/home/home_state.dart';
import 'package:duxbe_kds/features/home/domain/models/home_models.dart';
import 'package:duxbe_kds/features/home/presentation/home/widgets/home_orders_board_mobile.dart';
import 'package:duxbe_kds/features/home/presentation/home/widgets/home_sales_refresh.dart';
import 'package:duxbe_kds/shared/shared.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hancod_theme/hancod_theme.dart';
import 'package:intl/intl.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:reactive_forms/reactive_forms.dart';

class HomeOrdersBoard extends ConsumerStatefulWidget {
  const HomeOrdersBoard({super.key});

  @override
  ConsumerState<HomeOrdersBoard> createState() => _HomeOrdersBoardState();
}

class _HomeOrdersBoardState extends ConsumerState<HomeOrdersBoard> {
  ProviderSubscription<AsyncValue<DateTime>>?
  _salesRealtimeSubscription;

  @override
  void initState() {
    super.initState();
    _salesRealtimeSubscription = ref
        .listenManual<AsyncValue<DateTime>>(
          salesRealtimeProvider,
          (previous, next) {
            final statuses = ref.read(homeProvider).statuses;
            if (!next.hasValue || statuses.isEmpty) return;
            refreshHomeSalesBoard(ref, statuses);
          },
        );
  }

  @override
  void dispose() {
    _salesRealtimeSubscription?.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final boardState = ref.watch(homeProvider);
    final statuses = boardState.statuses;

    return ReactiveForm(
      formGroup: ref.read(homeProvider.notifier).form,
      child: LayoutBuilder(
        builder: (context, constraints) {
          if (constraints.maxWidth < 900) {
            return const HomeOrdersBoardMobile();
          }

          final laneStates = {
            for (final status in statuses)
              status.statusId: ref.watch(homeOrderLaneProvider(status)),
          };
          final totalOrders = laneStates.values.fold<int>(
            0,
            (count, laneState) => count + laneState.totalCount,
          );
          final completedOrders = statuses
              .where((status) => status.isCompleted)
              .fold<int>(
                0,
                (count, status) =>
                    count + (laneStates[status.statusId]?.totalCount ?? 0),
              );
          final inProgressOrders = totalOrders - completedOrders;
          final selectedBusiness = ref.watch(selectedBusinessProvider);
          final isRestaurantBusiness =
              selectedBusiness?.businessType == BusinessType.foodAndBeverage;

          return Container(
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
                          value: completedOrders.toString(),
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(height: 18),
                Row(
                  children: [
                    Expanded(
                      child: ReactiveText<String>(
                        formControlName: 'search_query',
                        onChanged: (control) => ref
                            .read(homeProvider.notifier)
                            .setSearchQuery(control.value ?? ''),
                        decoration: InputDecoration(
                          hintText:
                              'Search by customer, table, order number, or item',
                          prefixIcon: const Icon(Icons.search),
                          filled: true,
                          fillColor: AppColors.white.withValues(alpha: .08),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(16),
                            borderSide: BorderSide(
                              color: AppColors.brandViolet.withValues(
                                alpha: .12,
                              ),
                            ),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(16),
                            borderSide: BorderSide(
                              color: AppColors.brandViolet.withValues(
                                alpha: .12,
                              ),
                            ),
                          ),
                          focusedBorder: const OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(16)),
                            borderSide: BorderSide(
                              color: AppColors.brandViolet,
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(width: 10),
                    Tooltip(
                      message: 'Refresh orders',
                      child: Material(
                        color: AppColors.white.withValues(alpha: .08),
                        borderRadius: BorderRadius.circular(16),
                        child: InkWell(
                          onTap: () => refreshHomeSalesBoard(ref, statuses),
                          borderRadius: BorderRadius.circular(16),
                          child: const SizedBox(
                            height: 56,
                            width: 56,
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
                Expanded(
                  child: LayoutBuilder(
                    builder: (context, constraints) {
                      if (boardState.status == HomeStatus.loading &&
                          statuses.isEmpty) {
                        return const SalesBoardShimmer(isMobile: false);
                      }

                      if (statuses.isEmpty) {
                        return Center(
                          child: EmptyWidget(
                            text: boardState.error.isNotEmpty
                                ? boardState.error
                                : context.l10n.noData,
                          ),
                        );
                      }

                      final isStacked = constraints.maxWidth < 900;

                      if (isStacked) {
                        return SingleChildScrollView(
                          child: Column(
                            children: [
                              for (
                                var index = 0;
                                index < statuses.length;
                                index++
                              )
                                Padding(
                                  padding: EdgeInsets.only(
                                    bottom: index == statuses.length - 1
                                        ? 0
                                        : 12,
                                  ),
                                  child: SizedBox(
                                    height: isRestaurantBusiness ? 340 : 280,
                                    child: _OrderLane(
                                      status: statuses[index],
                                      state:
                                          laneStates[statuses[index].statusId]!,
                                      searchQuery: boardState.searchQuery,
                                      isRestaurantBusiness:
                                          isRestaurantBusiness,
                                      onDropOrder: (orderId) {
                                        ref
                                            .read(homeProvider.notifier)
                                            .moveOrder(
                                              orderId,
                                              statuses[index],
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
                                  state: laneStates[statuses[index].statusId]!,
                                  searchQuery: boardState.searchQuery,
                                  isRestaurantBusiness: isRestaurantBusiness,
                                  onDropOrder: (orderId) {
                                    ref
                                        .read(homeProvider.notifier)
                                        .moveOrder(orderId, statuses[index]);
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
          );
        },
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
    required this.state,
    required this.searchQuery,
    required this.isRestaurantBusiness,
    required this.onDropOrder,
  });

  final Status status;
  final HomeOrderLaneState state;
  final String searchQuery;
  final bool isRestaurantBusiness;
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
            // borderRadius: BorderRadius.circular(22),
            border: Border.all(
              color: isTargeted
                  ? status.color
                  : AppColors.greyBorder.withValues(alpha: .10),
              width: isTargeted ? 2 : 1,
            ),
          ),
          // padding: const EdgeInsets.all(14),
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
                        state.totalCount.toString(),
                        style: AppText.smallSB.copyWith(color: AppColors.white),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 12),
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                    color: AppColors.greyBorder,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: PagingListener(
                    controller: state.pagingController,
                    builder: (context, pagingState, fetchNextPage) =>
                        PagedListView<int, KdsSale>(
                          keyboardDismissBehavior:
                              ScrollViewKeyboardDismissBehavior.onDrag,
                          padding: const EdgeInsets.all(10),
                          shrinkWrap: true,
                          state: pagingState,
                          fetchNextPage: fetchNextPage,
                          builderDelegate: PagedChildBuilderDelegate<KdsSale>(
                            firstPageProgressIndicatorBuilder: (context) {
                              return const Padding(
                                padding: EdgeInsets.all(10),
                                child: LaneContentShimmer(isMobile: false),
                              );
                            },
                            newPageProgressIndicatorBuilder: (context) {
                              return const Padding(
                                padding: EdgeInsets.symmetric(
                                  horizontal: 10,
                                  vertical: 4,
                                ),
                                child: LaneContentShimmer(
                                  isMobile: false,
                                  itemCount: 2,
                                ),
                              );
                            },
                            noItemsFoundIndicatorBuilder: (context) {
                              if (searchQuery.trim().isNotEmpty) {
                                return const EmptyWidget(
                                  text: 'No matching orders',
                                );
                              }
                              return EmptyWidget(text: context.l10n.noData);
                            },
                            itemBuilder: (context, order, index) {
                              final isLast =
                                  (pagingState.items?.length ?? 0) - 1 == index;
                              return Padding(
                                padding: EdgeInsets.only(
                                  bottom: isLast ? 0 : 12,
                                ),
                                child: _OrderCard(
                                  order: order,
                                  status: status,
                                  isRestaurantBusiness: isRestaurantBusiness,
                                ),
                              );
                            },
                          ),
                        ),
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
  const _OrderCard({
    required this.order,
    required this.status,
    required this.isRestaurantBusiness,
  });

  final KdsSale order;
  final Status status;
  final bool isRestaurantBusiness;

  String get _timeLabel =>
      DateFormat('EEE, MMMM d, yyyy, h:mm a').format(order.placedAt);

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
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 38,
                width: 38,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: status.color.withValues(alpha: .16),
                  borderRadius: BorderRadius.circular(10),
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
          if (isRestaurantBusiness &&
              (order.tableName?.trim().isNotEmpty ?? false))
            Text(
              'Table : ${order.tableName!.trim()}',
              textAlign: TextAlign.center,
              style: AppText.mediumSB.copyWith(color: AppColors.black),
            )
          else
            Text(
              order.tableLabel,
              style: AppText.mediumSB.copyWith(color: AppColors.black),
            ),
          const SizedBox(height: 8),
          Text(
            _timeLabel,
            style: AppText.smallN.copyWith(color: AppColors.greyText),
          ),
          const SizedBox(height: 12),
          Container(
            height: 1,
            color: AppColors.greyBorder.withValues(alpha: .55),
          ),
          const SizedBox(height: 12),
          _OrderItemsSection(items: order.items),
          const SizedBox(height: 10),
          Align(
            alignment: Alignment.centerRight,
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
              decoration: BoxDecoration(
                color: status.color.withValues(alpha: .12),
                borderRadius: BorderRadius.circular(999),
              ),
              child: Text(
                status.label,
                style: AppText.smallSB.copyWith(color: status.color),
              ),
            ),
          ),
        ],
      ),
    );

    if (kIsWeb) {
      return Draggable<String>(
        data: order.saleId,
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
      data: order.saleId,
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

class _OrderItemLine extends StatelessWidget {
  const _OrderItemLine({required this.item});

  final KdsOrderItem item;

  @override
  Widget build(BuildContext context) {
    final note = item.note?.trim() ?? '';

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          '${item.quantity}x '
          '${item.itemName}',
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          style: AppText.mediumN.copyWith(color: AppColors.black),
        ),
        if (note.isNotEmpty) ...[
          const SizedBox(height: 4),
          Padding(
            padding: const EdgeInsets.only(left: 44),
            child: Text(
              'Note: ${note}',
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
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

class _OrderItemsSection extends StatelessWidget {
  const _OrderItemsSection({required this.items});

  final List<KdsOrderItem> items;

  @override
  Widget build(BuildContext context) {
    if (items.isEmpty) {
      return Text(
        'No items available',
        style: AppText.smallN.copyWith(color: AppColors.greyText),
      );
    }

    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        for (final item in items)
          Padding(
            padding: const EdgeInsets.only(bottom: 8),
            child: _OrderItemLine(item: item),
          ),
      ],
    );
  }
}
