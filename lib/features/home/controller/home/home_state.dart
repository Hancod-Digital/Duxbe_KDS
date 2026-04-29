import 'package:duxbe_kds/features/home/domain/models/home_models.dart';

enum HomeStatus { initial, loading, success, error }

class HomeState {
  const HomeState({
    this.status = HomeStatus.initial,
    this.orders = const [],
    this.selectedBusinessId,
    this.searchQuery = '',
    this.error = '',
  });

  factory HomeState.initial() => const HomeState();

  final HomeStatus status;
  final List<KitchenOrderItem> orders;
  final String? selectedBusinessId;
  final String searchQuery;
  final String error;

  HomeState copyWith({
    HomeStatus? status,
    List<KitchenOrderItem>? orders,
    String? selectedBusinessId,
    String? searchQuery,
    String? error,
  }) {
    return HomeState(
      status: status ?? this.status,
      orders: orders ?? this.orders,
      selectedBusinessId: selectedBusinessId ?? this.selectedBusinessId,
      searchQuery: searchQuery ?? this.searchQuery,
      error: error ?? this.error,
    );
  }

  List<KitchenOrderItem> get filteredOrders {
    final query = searchQuery.trim().toLowerCase();
    if (query.isEmpty) return orders;

    return orders.where((order) {
      return order.orderNo.toLowerCase().contains(query) ||
          order.customerName.toLowerCase().contains(query) ||
          order.tableLabel.toLowerCase().contains(query) ||
          order.items.any((item) => item.toLowerCase().contains(query));
    }).toList();
  }

  Map<KitchenOrderStatus, List<KitchenOrderItem>> get groupedOrders {
    return {
      for (final status in KitchenOrderStatus.values)
        status: filteredOrders.where((order) => order.status == status).toList(),
    };
  }
}
