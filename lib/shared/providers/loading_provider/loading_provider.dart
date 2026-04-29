// import 'package:riverpod_annotation/riverpod_annotation.dart';

// part 'loading_notifier.g.dart';

// @riverpod
// class AsyncAction extends _$AsyncAction {
//   @override
//   AsyncValue<void> build({String? actionName}) {
//     return const AsyncValue.data(null);
//   }

//   Future<void> execute(
//     Future<void> Function() action, {
//     void Function(Object, StackTrace)? error,
//   }) async {
//     state = const AsyncValue.loading();

//     final result = await AsyncValue.guard(action);
//     result.maybeWhen(error: error, orElse: () {});
//     if (ref.mounted) {
//       state = result;
//     }
//   }
// }
