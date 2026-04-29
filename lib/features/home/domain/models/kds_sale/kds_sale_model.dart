// ignore_for_file: invalid_annotation_target

import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'kds_sale_model.freezed.dart';
part 'kds_sale_model.g.dart';

@freezed
sealed class KdsSale with _$KdsSale {
  const factory KdsSale({
    @JsonKey(name: 'sale_id', fromJson: _stringFromJson) required String saleId,
    @JsonKey(name: 'business_id', fromJson: _stringFromJson)
    required String businessId,
    @JsonKey(name: 'sale_invoice', fromJson: _stringFromJson)
    required String saleInvoice,
    @JsonKey(name: 'sale_date', fromJson: _dateTimeFromJson)
    required DateTime saleDate,
    @JsonKey(name: 'order_type', fromJson: _nullableStringFromJson)
    String? orderType,
    @JsonKey(name: 'order_mode', fromJson: _boolFromJson)
    @Default(false)
    bool orderMode,
    @JsonKey(name: 'status', fromJson: _nullableStringFromJson) String? status,
    @JsonKey(name: 'created_at', fromJson: _dateTimeFromJson)
    required DateTime createdAt,
    @JsonKey(name: 'customer_id', fromJson: _nullableStringFromJson)
    String? customerId,
    @JsonKey(name: 'customer_name', fromJson: _nullableStringFromJson)
    String? customerName,
    @JsonKey(name: 'customer_phone', fromJson: _nullableStringFromJson)
    String? customerPhone,
    @JsonKey(name: 'table_name', fromJson: _nullableStringFromJson)
    String? tableName,
    @JsonKey(name: 'platform', fromJson: _nullableStringFromJson)
    String? platform,
    @JsonKey(name: 'ordered_by', fromJson: _nullableStringFromJson)
    String? orderedBy,
    @JsonKey(
      name: 'item_history',
      fromJson: _itemHistoryFromJson,
      toJson: _itemHistoryToJson,
    )
    @Default(<KdsOrderHistoryEntry>[])
    List<KdsOrderHistoryEntry> itemHistory,
  }) = _KdsSale;

  factory KdsSale.fromJson(Map<String, dynamic> json) => _$KdsSaleFromJson(json);
}

@freezed
sealed class KdsOrderHistoryEntry with _$KdsOrderHistoryEntry {
  const factory KdsOrderHistoryEntry({
    @JsonKey(name: 'order_time', fromJson: _nullableDateTimeFromJson)
    DateTime? orderTime,
    @JsonKey(name: 'items', fromJson: _kdsItemsFromJson, toJson: _kdsItemsToJson)
    @Default(<KdsOrderItem>[])
    List<KdsOrderItem> items,
  }) = _KdsOrderHistoryEntry;

  factory KdsOrderHistoryEntry.fromJson(Map<String, dynamic> json) =>
      _$KdsOrderHistoryEntryFromJson(json);
}

@freezed
sealed class KdsOrderItem with _$KdsOrderItem {
  const factory KdsOrderItem({
    @JsonKey(name: 'item_id', fromJson: _stringFromJson) @Default('') String itemId,
    @JsonKey(name: 'quantity', fromJson: _intFromJson) @Default(0) int quantity,
    @JsonKey(name: 'item_name', fromJson: _stringFromJson)
    @Default('Item')
    String itemName,
    @JsonKey(name: 'note', fromJson: _nullableStringFromJson) String? note,
    @JsonKey(name: 'item_type', fromJson: _nullableStringFromJson)
    String? itemType,
    @JsonKey(name: 'unit_price', fromJson: _nullableDoubleFromJson)
    double? unitPrice,
    @JsonKey(name: 'category_id', fromJson: _nullableStringFromJson)
    String? categoryId,
    @JsonKey(
      name: 'subservices',
      fromJson: _subservicesFromJson,
      toJson: _subservicesToJson,
    )
    @Default(<dynamic>[])
    List<dynamic> subservices,
    @JsonKey(name: 'category_name', fromJson: _nullableStringFromJson)
    String? categoryName,
  }) = _KdsOrderItem;

  factory KdsOrderItem.fromJson(Map<String, dynamic> json) =>
      _$KdsOrderItemFromJson(json);
}

extension KdsSalePresentationX on KdsSale {
  String get orderNo => saleInvoice.trim().isEmpty ? saleId : saleInvoice;

  String get customerNameLabel => _firstNonEmpty([
        customerName,
        orderedBy,
        customerPhone,
      ], fallback: 'Guest');

  String get tableLabel =>
      _firstNonEmpty([tableName, orderType, platform], fallback: 'Order');

  DateTime get placedAt => saleDate;

  List<KdsOrderItem> get items =>
      itemHistory.expand((entry) => entry.items).toList(growable: false);

  List<String> get itemLines {
    if (items.isEmpty) {
      return const ['No items available'];
    }

    return items.map((item) {
      final label = item.displayLabel;
      final note = item.note?.trim();
      if (note == null || note.isEmpty) {
        return label;
      }
      return '$label\n$note';
    }).toList(growable: false);
  }

  String get searchableText {
    final values = <String>[
      orderNo,
      customerNameLabel,
      tableLabel,
      customerPhone?.trim() ?? '',
      platform?.trim() ?? '',
      orderedBy?.trim() ?? '',
      for (final item in items) item.searchableText,
    ];
    return values.where((value) => value.trim().isNotEmpty).join(' ');
  }
}

extension KdsOrderItemPresentationX on KdsOrderItem {
  String get displayLabel {
    final cleanName = itemName.trim().isEmpty ? 'Item' : itemName.trim();
    final quantityLabel = quantity > 1 ? '$quantity x ' : '1 x ';
    return '$quantityLabel$cleanName';
  }

  String get searchableText {
    final values = <String>[
      itemId,
      itemName,
      note ?? '',
      itemType ?? '',
      categoryId ?? '',
      categoryName ?? '',
      quantity.toString(),
      unitPrice?.toString() ?? '',
      for (final value in subservices) value.toString(),
    ];
    return values.where((value) => value.trim().isNotEmpty).join(' ');
  }
}

dynamic _itemHistoryFromJson(dynamic value) => _kdsHistoryEntriesFromJson(value);

dynamic _itemHistoryToJson(List<KdsOrderHistoryEntry> value) =>
    _kdsHistoryEntriesToJson(value);

List<KdsOrderHistoryEntry> _kdsHistoryEntriesFromJson(dynamic value) {
  if (value == null) {
    return const [];
  }

  Object? decoded = value;
  if (value is String && value.trim().isNotEmpty) {
    try {
      decoded = jsonDecode(value);
    } catch (_) {
      return const [];
    }
  }

  if (decoded is Map) {
    return [KdsOrderHistoryEntry.fromJson(Map<String, dynamic>.from(decoded))];
  }

  if (decoded is! List) {
    return const [];
  }

  final history = <KdsOrderHistoryEntry>[];
  for (final rawEntry in decoded) {
    if (rawEntry is Map) {
      history.add(
        KdsOrderHistoryEntry.fromJson(Map<String, dynamic>.from(rawEntry)),
      );
    }
  }
  return history;
}

List<Map<String, dynamic>> _kdsHistoryEntriesToJson(
  List<KdsOrderHistoryEntry> value,
) =>
    value.map((entry) => entry.toJson()).toList(growable: false);

List<KdsOrderItem> _kdsItemsFromJson(dynamic value) {
  if (value == null) {
    return const [];
  }

  if (value is List) {
    return value
        .whereType<Map>()
        .map((rawItem) => KdsOrderItem.fromJson(Map<String, dynamic>.from(rawItem)))
        .toList(growable: false);
  }

  if (value is Map) {
    return [KdsOrderItem.fromJson(Map<String, dynamic>.from(value))];
  }

  return const [];
}

List<Map<String, dynamic>> _kdsItemsToJson(List<KdsOrderItem> value) =>
    value.map((item) => item.toJson()).toList(growable: false);

List<dynamic> _subservicesFromJson(dynamic value) {
  if (value == null) {
    return const [];
  }
  if (value is List) {
    return value.toList(growable: false);
  }
  if (value is Map) {
    return [Map<String, dynamic>.from(value)];
  }
  return [value];
}

List<dynamic> _subservicesToJson(List<dynamic> value) =>
    value.toList(growable: false);

String _stringFromJson(dynamic value) {
  final parsed = value?.toString().trim();
  return parsed == null ? '' : parsed;
}

String? _nullableStringFromJson(dynamic value) {
  final parsed = value?.toString().trim();
  if (parsed == null || parsed.isEmpty) {
    return null;
  }
  return parsed;
}

DateTime _dateTimeFromJson(dynamic value) {
  final parsed = _nullableDateTimeFromJson(value);
  if (parsed != null) {
    return parsed;
  }
  throw FormatException('Invalid DateTime value: $value');
}

DateTime? _nullableDateTimeFromJson(dynamic value) {
  final parsed = value?.toString().trim();
  if (parsed == null || parsed.isEmpty) {
    return null;
  }
  return DateTime.tryParse(parsed);
}

bool _boolFromJson(dynamic value) {
  if (value is bool) {
    return value;
  }
  if (value is num) {
    return value != 0;
  }
  final parsed = value?.toString().trim().toLowerCase();
  return parsed == 'true' || parsed == 't' || parsed == '1' || parsed == 'yes';
}

int _intFromJson(dynamic value) {
  if (value == null) {
    return 0;
  }
  if (value is int) {
    return value;
  }
  if (value is num) {
    return value.toInt();
  }
  return int.tryParse(value.toString()) ?? 0;
}

double? _nullableDoubleFromJson(dynamic value) {
  if (value == null) {
    return null;
  }
  if (value is double) {
    return value;
  }
  if (value is int) {
    return value.toDouble();
  }
  return double.tryParse(value.toString());
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
