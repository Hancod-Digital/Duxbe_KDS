import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'loading_provider.g.dart';

@riverpod
class AsyncAction extends _$AsyncAction {
  @override
  AsyncValue<void> build({String? actionName}) {
    return const AsyncValue.data(null);
  }

  Future<T?> execute<T>(
    Future<T> Function() action, {
    void Function(Object, StackTrace)? error,
  }) async {
    state = const AsyncValue.loading();

    final result = await AsyncValue.guard(action);
    result.maybeWhen(error: error, orElse: () {});
    if (ref.mounted) {
      state = result;
    }
    return result.value;
  }
}
