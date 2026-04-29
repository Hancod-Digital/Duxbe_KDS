// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pdf_platform_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(pdf)
const pdfProvider = PdfProvider._();

final class PdfProvider
    extends $FunctionalProvider<IPdfPlatform, IPdfPlatform, IPdfPlatform>
    with $Provider<IPdfPlatform> {
  const PdfProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'pdfProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$pdfHash();

  @$internal
  @override
  $ProviderElement<IPdfPlatform> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  IPdfPlatform create(Ref ref) {
    return pdf(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(IPdfPlatform value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<IPdfPlatform>(value),
    );
  }
}

String _$pdfHash() => r'4750a91d103131461ca184ddc9808e98311a91f5';
