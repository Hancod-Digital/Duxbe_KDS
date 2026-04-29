// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'status_model.freezed.dart';
part 'status_model.g.dart';

@freezed
sealed class Status with _$Status {
  const factory Status({
    @JsonKey(name: 'status_id') required String statusId,
    @JsonKey(name: 'business_id') required String businessId,
    @JsonKey(name: 'name') required String name,
    @JsonKey(name: 'sequence_order') required int sequenceOrder,
    @JsonKey(name: 'moving_order') int? movingOrder,
  }) = _Status;

  factory Status.fromJson(Map<String, dynamic> json) => _$StatusFromJson(json);
}
