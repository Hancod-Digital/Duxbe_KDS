import 'package:flutter/material.dart';

enum KitchenOrderStatus {
  newOrders,
  cooking,
  readyToServe,
  completed,
}

extension KitchenOrderStatusX on KitchenOrderStatus {
  String get label => switch (this) {
    KitchenOrderStatus.newOrders => 'New Orders',
    KitchenOrderStatus.cooking => 'Cooking',
    KitchenOrderStatus.readyToServe => 'Ready to Serve',
    KitchenOrderStatus.completed => 'Completed',
  };

  Color get color => switch (this) {
    KitchenOrderStatus.newOrders => const Color(0xff2E7BF6),
    KitchenOrderStatus.cooking => const Color(0xffF59E0B),
    KitchenOrderStatus.readyToServe => const Color(0xffB23A48),
    KitchenOrderStatus.completed => const Color(0xff16A34A),
  };

  Color get softColor => color.withValues(alpha: .10);
}

class KitchenOrderItem {
  KitchenOrderItem({
    required this.id,
    required this.orderNo,
    required this.customerName,
    required this.tableLabel,
    required this.items,
    required this.placedAt,
    required this.status,
    this.businessId,
  });

  final String id;
  final String orderNo;
  final String customerName;
  final String tableLabel;
  final List<String> items;
  final DateTime placedAt;
  final KitchenOrderStatus status;
  final String? businessId;

  KitchenOrderItem copyWith({
    String? id,
    String? orderNo,
    String? customerName,
    String? tableLabel,
    List<String>? items,
    DateTime? placedAt,
    KitchenOrderStatus? status,
    String? businessId,
  }) {
    return KitchenOrderItem(
      id: id ?? this.id,
      orderNo: orderNo ?? this.orderNo,
      customerName: customerName ?? this.customerName,
      tableLabel: tableLabel ?? this.tableLabel,
      items: items ?? this.items,
      placedAt: placedAt ?? this.placedAt,
      status: status ?? this.status,
      businessId: businessId ?? this.businessId,
    );
  }
}

class HomeBoardState {
  const HomeBoardState({
    required this.orders,
    this.selectedBusinessId,
    this.searchQuery = '',
  });

  factory HomeBoardState.initial() => const HomeBoardState(orders: []);

  final List<KitchenOrderItem> orders;
  final String? selectedBusinessId;
  final String searchQuery;

  HomeBoardState copyWith({
    List<KitchenOrderItem>? orders,
    String? selectedBusinessId,
    String? searchQuery,
  }) {
    return HomeBoardState(
      orders: orders ?? this.orders,
      selectedBusinessId: selectedBusinessId ?? this.selectedBusinessId,
      searchQuery: searchQuery ?? this.searchQuery,
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
