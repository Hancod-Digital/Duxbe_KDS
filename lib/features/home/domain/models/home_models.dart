import 'package:flutter/material.dart';

import 'minimal_sale/minimal_sale_model.dart';
import 'status_model/status_model.dart';

export 'minimal_sale/minimal_sale_model.dart';
export 'kds_sale/kds_sale_model.dart';
export 'status_model/status_model.dart';

List<Status> sortStatuses(Iterable<Status> statuses) {
  final sorted = statuses.toList();
  sorted.sort((a, b) => a.sequenceOrder.compareTo(b.sequenceOrder));
  return sorted;
}

extension StatusPresentationX on Status {
  String get label => name;

  bool get isCompleted => name.trim().toLowerCase() == 'completed';

  Color get color {
    final normalizedName = name.trim().toLowerCase();

    switch (normalizedName) {
      case 'new orders':
      case 'new':
      case 'pending':
        return const Color(0xff2E7BF6);
      case 'cooking':
      case 'preparing':
      case 'in progress':
        return const Color(0xffF59E0B);
      case 'ready to serve':
      case 'ready':
        return const Color(0xffB23A48);
      case 'completed':
      case 'done':
      case 'served':
        return const Color(0xff16A34A);
    }

    const palette = [
      Color(0xff2E7BF6),
      Color(0xffF59E0B),
      Color(0xffB23A48),
      Color(0xff16A34A),
      Color(0xff7C3AED),
      Color(0xff0EA5E9),
      Color(0xffEF4444),
      Color(0xff14B8A6),
    ];
    final paletteIndex = sequenceOrder <= 0
        ? 0
        : (sequenceOrder - 1) % palette.length;
    return palette[paletteIndex];
  }

  Color get softColor => color.withValues(alpha: .10);
}

extension MinimalSalePresentationX on MinimalSale {
  String get orderNo => saleInvoice.isEmpty ? saleId : saleInvoice;

  String get customerNameLabel => _firstNonEmpty([
    customerName,
    orderedBy,
    customerPhone,
  ], fallback: 'Guest');

  String get tableLabel =>
      _firstNonEmpty([tableName, orderType, platform], fallback: 'Order');

  List<String> get items {
    final values =
        <String?>[orderType, paymentType, platform, transactionStatus]
            .whereType<String>()
            .map((value) => value.trim())
            .where((value) => value.isNotEmpty)
            .toList();

    if (values.isEmpty) {
      return const ['Order details unavailable'];
    }

    return values;
  }

  DateTime get placedAt => saleDate;

  String get saleStatusLabel => status?.trim() ?? '';
}

Status resolveSaleStatus({
  required MinimalSale sale,
  required Iterable<Status> statuses,
  required Status fallbackStatus,
}) {
  final normalizedSaleStatus = sale.status?.trim().toLowerCase();
  if (normalizedSaleStatus == null || normalizedSaleStatus.isEmpty) {
    return fallbackStatus;
  }

  for (final status in statuses) {
    final candidates = <String>{
      status.statusId.trim().toLowerCase(),
      status.name.trim().toLowerCase(),
      status.label.trim().toLowerCase(),
    };
    if (candidates.contains(normalizedSaleStatus)) {
      return status;
    }
  }

  return fallbackStatus;
}

bool saleMatchesStatus({
  required MinimalSale sale,
  required Status status,
  required Iterable<Status> statuses,
}) {
  return resolveSaleStatus(
        sale: sale,
        statuses: statuses,
        fallbackStatus: status,
      ).statusId ==
      status.statusId;
}

String _firstNonEmpty(Iterable<String?> values, {required String fallback}) {
  for (final value in values) {
    final normalized = value?.trim();
    if (normalized != null && normalized.isNotEmpty) {
      return normalized;
    }
  }

  return fallback;
}

class HomeBoardState {
  const HomeBoardState({
    required this.orders,
    required this.statuses,
    this.selectedBusinessId,
    this.searchQuery = '',
  });

  factory HomeBoardState.initial() =>
      const HomeBoardState(orders: [], statuses: []);

  final List<MinimalSale> orders;
  final List<Status> statuses;
  final String? selectedBusinessId;
  final String searchQuery;

  HomeBoardState copyWith({
    List<MinimalSale>? orders,
    List<Status>? statuses,
    String? selectedBusinessId,
    String? searchQuery,
  }) {
    return HomeBoardState(
      orders: orders ?? this.orders,
      statuses: statuses ?? this.statuses,
      selectedBusinessId: selectedBusinessId ?? this.selectedBusinessId,
      searchQuery: searchQuery ?? this.searchQuery,
    );
  }

  List<MinimalSale> get filteredOrders {
    final query = searchQuery.trim().toLowerCase();
    if (query.isEmpty) return orders;

    return orders.where((order) {
      return order.orderNo.toLowerCase().contains(query) ||
          order.customerNameLabel.toLowerCase().contains(query) ||
          order.tableLabel.toLowerCase().contains(query) ||
          order.items.any((item) => item.toLowerCase().contains(query));
    }).toList();
  }
}
