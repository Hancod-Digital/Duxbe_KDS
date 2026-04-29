// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'loading_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(AsyncAction)
const asyncActionProvider = AsyncActionFamily._();

final class AsyncActionProvider
    extends $NotifierProvider<AsyncAction, AsyncValue<void>> {
  const AsyncActionProvider._({
    required AsyncActionFamily super.from,
    required String? super.argument,
  }) : super(
         retry: null,
         name: r'asyncActionProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$asyncActionHash();

  @override
  String toString() {
    return r'asyncActionProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  AsyncAction create() => AsyncAction();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(AsyncValue<void> value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<AsyncValue<void>>(value),
    );
  }

  @override
  bool operator ==(Object other) {
    return other is AsyncActionProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$asyncActionHash() => r'67b048aa6903b32841c30407aa1b8c2ccb11469c';

final class AsyncActionFamily extends $Family
    with
        $ClassFamilyOverride<
          AsyncAction,
          AsyncValue<void>,
          AsyncValue<void>,
          AsyncValue<void>,
          String?
        > {
  const AsyncActionFamily._()
    : super(
        retry: null,
        name: r'asyncActionProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  AsyncActionProvider call({String? actionName}) =>
      AsyncActionProvider._(argument: actionName, from: this);

  @override
  String toString() => r'asyncActionProvider';
}

abstract class _$AsyncAction extends $Notifier<AsyncValue<void>> {
  late final _$args = ref.$arg as String?;
  String? get actionName => _$args;

  AsyncValue<void> build({String? actionName});
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build(actionName: _$args);
    final ref = this.ref as $Ref<AsyncValue<void>, AsyncValue<void>>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AsyncValue<void>, AsyncValue<void>>,
              AsyncValue<void>,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}
