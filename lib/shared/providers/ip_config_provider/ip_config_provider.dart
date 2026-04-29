import 'dart:convert' as convert;

import 'package:duxbe_kds/shared/models/ip_model/ip_model.dart';
import 'package:flutter_riverpod/legacy.dart';
import 'package:http/http.dart' as http;
import 'package:phone_form_field/phone_form_field.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'ip_config_provider.g.dart';

@Riverpod(keepAlive: true)
Future<IPModel> ipConfig(Ref ref) async {
  try {
    final url = Uri.parse('https://ipinfo.io/?token=098daa645a100b');
    final response = await http.get(
      url,
      headers: {'Referer': 'https://business.duxbe.com'},
    );

    return IPModel.fromJson(
      convert.jsonDecode(response.body) as Map<String, dynamic>,
    );
  } catch (e) {
    return const IPModel();
  }
}

final countryCodeProvider = StateProvider<PhoneNumber>(
  (ref) => PhoneNumber(
    isoCode: IsoCode.fromJson(
      ref
          .watch(ipConfigProvider)
          .maybeWhen(data: (data) => data, orElse: () => const IPModel())
          .country,
    ),
    nsn: '',
  ),
);
