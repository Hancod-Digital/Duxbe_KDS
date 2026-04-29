// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'crm_ticket_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CrmTicket _$CrmTicketFromJson(Map<String, dynamic> json) => _CrmTicket(
  id: json['id'] as String?,
  crmIdentifier: json['crm_identifier'] as String?,
  businessId: json['business_id'] as String?,
  createdBy: json['created_by'] as String?,
  title: json['title'] as String?,
  description: json['description'] as String?,
  issueType: json['issue_type'] as String?,
  priority: json['priority'] == null
      ? 'medium'
      : _priorityFromJson(json['priority']),
  status: json['status'] == null ? 'open' : _statusFromJson(json['status']),
  assignedTo: json['assigned_to'] as String?,
  createdAt: _dateTimeFromJson(json['created_at']),
  updatedAt: _dateTimeFromJson(json['updated_at']),
  messageCount: json['message_count'] == null
      ? 0
      : _intFromJson(json['message_count']),
);

Map<String, dynamic> _$CrmTicketToJson(_CrmTicket instance) =>
    <String, dynamic>{
      'id': instance.id,
      'crm_identifier': instance.crmIdentifier,
      'business_id': instance.businessId,
      'created_by': instance.createdBy,
      'title': instance.title,
      'description': instance.description,
      'issue_type': instance.issueType,
      'priority': instance.priority,
      'status': instance.status,
      'assigned_to': instance.assignedTo,
      'created_at': instance.createdAt?.toIso8601String(),
      'updated_at': instance.updatedAt?.toIso8601String(),
      'message_count': instance.messageCount,
    };
