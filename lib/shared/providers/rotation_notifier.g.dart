// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'rotation_notifier.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning
/// A provider that exposes the raw physical orientation stream

@ProviderFor(physicalOrientation)
const physicalOrientationProvider = PhysicalOrientationProvider._();

/// A provider that exposes the raw physical orientation stream

final class PhysicalOrientationProvider
    extends
        $FunctionalProvider<
          AsyncValue<NativeDeviceOrientation>,
          NativeDeviceOrientation,
          Stream<NativeDeviceOrientation>
        >
    with
        $FutureModifier<NativeDeviceOrientation>,
        $StreamProvider<NativeDeviceOrientation> {
  /// A provider that exposes the raw physical orientation stream
  const PhysicalOrientationProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'physicalOrientationProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$physicalOrientationHash();

  @$internal
  @override
  $StreamProviderElement<NativeDeviceOrientation> $createElement(
    $ProviderPointer pointer,
  ) => $StreamProviderElement(pointer);

  @override
  Stream<NativeDeviceOrientation> create(Ref ref) {
    return physicalOrientation(ref);
  }
}

String _$physicalOrientationHash() =>
    r'7273c734da94029f38922c798ea16bc761b76726';

/// The main Notifier that manages the rotation logic

@ProviderFor(RotationNotifier)
const rotationProvider = RotationNotifierFamily._();

/// The main Notifier that manages the rotation logic
final class RotationNotifierProvider
    extends $NotifierProvider<RotationNotifier, RotationState> {
  /// The main Notifier that manages the rotation logic
  const RotationNotifierProvider._({
    required RotationNotifierFamily super.from,
    required Size super.argument,
  }) : super(
         retry: null,
         name: r'rotationProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$rotationNotifierHash();

  @override
  String toString() {
    return r'rotationProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  RotationNotifier create() => RotationNotifier();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(RotationState value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<RotationState>(value),
    );
  }

  @override
  bool operator ==(Object other) {
    return other is RotationNotifierProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$rotationNotifierHash() => r'64a858af0ded84cc0cd7fcce59d8cfcda00dbba1';

/// The main Notifier that manages the rotation logic

final class RotationNotifierFamily extends $Family
    with
        $ClassFamilyOverride<
          RotationNotifier,
          RotationState,
          RotationState,
          RotationState,
          Size
        > {
  const RotationNotifierFamily._()
    : super(
        retry: null,
        name: r'rotationProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  /// The main Notifier that manages the rotation logic

  RotationNotifierProvider call(Size size) =>
      RotationNotifierProvider._(argument: size, from: this);

  @override
  String toString() => r'rotationProvider';
}

/// The main Notifier that manages the rotation logic

abstract class _$RotationNotifier extends $Notifier<RotationState> {
  late final _$args = ref.$arg as Size;
  Size get size => _$args;

  RotationState build(Size size);
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build(_$args);
    final ref = this.ref as $Ref<RotationState, RotationState>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<RotationState, RotationState>,
              RotationState,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}
