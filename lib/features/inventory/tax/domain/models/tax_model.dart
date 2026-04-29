import 'package:freezed_annotation/freezed_annotation.dart';

part 'tax_model.freezed.dart';
part 'tax_model.g.dart';

@freezed
sealed class Tax with _$Tax {
  const factory Tax({
    @JsonKey(name: 'tax_id') String? taxId,
    @JsonKey(name: 'business_id') String? businessId,
    @JsonKey(name: 'name') required String name,
    @JsonKey(name: 'rate') required double rate,
    @JsonKey(name: 'type') String? type,
  }) = _Tax;

  factory Tax.fromJson(Map<String, dynamic> json) => _$TaxFromJson(json);
}
