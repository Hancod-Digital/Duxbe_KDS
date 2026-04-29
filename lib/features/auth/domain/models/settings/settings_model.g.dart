// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'settings_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Settings _$SettingsFromJson(Map<String, dynamic> json) => _Settings(
  id: (json['id'] as num?)?.toInt(),
  allowWalkinCustomer: json['allow_walkin_customer'] as bool? ?? false,
  allowOutofStock: json['allow_out_of_stock'] as bool? ?? false,
  printOnSale: json['print_on_sale'] as bool? ?? true,
  printOnPurchase: json['print_on_purchase'] as bool? ?? true,
  printBarcode: json['print_barcode'] as bool? ?? true,
);

Map<String, dynamic> _$SettingsToJson(_Settings instance) => <String, dynamic>{
  'id': instance.id,
  'allow_walkin_customer': instance.allowWalkinCustomer,
  'allow_out_of_stock': instance.allowOutofStock,
  'print_on_sale': instance.printOnSale,
  'print_on_purchase': instance.printOnPurchase,
  'print_barcode': instance.printBarcode,
};

_AuthApiErrorResponse _$AuthApiErrorResponseFromJson(
  Map<String, dynamic> json,
) => _AuthApiErrorResponse(
  error: json['error'] as String,
  details: json['details'] as String?,
);

Map<String, dynamic> _$AuthApiErrorResponseToJson(
  _AuthApiErrorResponse instance,
) => <String, dynamic>{'error': instance.error, 'details': instance.details};

_AuthApiResponse _$AuthApiResponseFromJson(Map<String, dynamic> json) =>
    _AuthApiResponse(
      message: json['message'] as String,
      token: json['token'] as String?,
      details: json['details'] as String?,
      code: (json['code'] as num?)?.toInt(),
    );

Map<String, dynamic> _$AuthApiResponseToJson(_AuthApiResponse instance) =>
    <String, dynamic>{
      'message': instance.message,
      'token': instance.token,
      'details': instance.details,
      'code': instance.code,
    };
