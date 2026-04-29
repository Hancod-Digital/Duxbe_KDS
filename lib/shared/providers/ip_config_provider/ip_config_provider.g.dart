// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ip_config_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(ipConfig)
const ipConfigProvider = IpConfigProvider._();

final class IpConfigProvider
    extends $FunctionalProvider<AsyncValue<IPModel>, IPModel, FutureOr<IPModel>>
    with $FutureModifier<IPModel>, $FutureProvider<IPModel> {
  const IpConfigProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'ipConfigProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$ipConfigHash();

  @$internal
  @override
  $FutureProviderElement<IPModel> $createElement($ProviderPointer pointer) =>
      $FutureProviderElement(pointer);

  @override
  FutureOr<IPModel> create(Ref ref) {
    return ipConfig(ref);
  }
}

String _$ipConfigHash() => r'5fe4ea1d74be1c952820413892075392c98241c9';
