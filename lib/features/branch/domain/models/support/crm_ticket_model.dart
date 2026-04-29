import 'package:freezed_annotation/freezed_annotation.dart';

part 'crm_ticket_model.freezed.dart';
part 'crm_ticket_model.g.dart';

@freezed
sealed class CrmTicket with _$CrmTicket {
  const factory CrmTicket({
    @JsonKey(name: 'id') String? id,
    @JsonKey(name: 'crm_identifier') String? crmIdentifier,
    @JsonKey(name: 'business_id') String? businessId,
    @JsonKey(name: 'created_by') String? createdBy,
    @JsonKey(name: 'title') String? title,
    @JsonKey(name: 'description') String? description,
    @JsonKey(name: 'issue_type') String? issueType,
    @JsonKey(name: 'priority', fromJson: _priorityFromJson)
    @Default('medium')
    String priority,
    @JsonKey(name: 'status', fromJson: _statusFromJson)
    @Default('open')
    String status,
    @JsonKey(name: 'assigned_to') String? assignedTo,
    @JsonKey(name: 'created_at', fromJson: _dateTimeFromJson)
    DateTime? createdAt,
    @JsonKey(name: 'updated_at', fromJson: _dateTimeFromJson)
    DateTime? updatedAt,
    @JsonKey(name: 'message_count', fromJson: _intFromJson)
    @Default(0)
    int messageCount,
  }) = _CrmTicket;

  factory CrmTicket.fromJson(Map<String, dynamic> json) =>
      _$CrmTicketFromJson(json);
}

String _priorityFromJson(dynamic value) {
  final parsed = value?.toString().trim();
  if (parsed == null || parsed.isEmpty) {
    return 'medium';
  }
  return parsed;
}

String _statusFromJson(dynamic value) {
  final parsed = value?.toString().trim();
  if (parsed == null || parsed.isEmpty) {
    return 'open';
  }
  return parsed;
}

DateTime? _dateTimeFromJson(dynamic value) {
  final parsed = value?.toString().trim();
  if (parsed == null || parsed.isEmpty) {
    return null;
  }
  return DateTime.tryParse(parsed);
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
