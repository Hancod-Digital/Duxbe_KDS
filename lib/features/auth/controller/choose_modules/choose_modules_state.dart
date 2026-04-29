part of 'choose_modules_notifier.dart';

enum ChooseModulesStatus {
  initial,
  loading,
  success,
  error,
}

extension ChooseModulesStatusExtension on ChooseModulesStatus {
  R when<R>({
    required R Function() initial,
    required R Function() loading,
    required R Function() success,
    required R Function() error,
  }) {
    switch (this) {
      case ChooseModulesStatus.initial:
        return initial();
      case ChooseModulesStatus.loading:
        return loading();
      case ChooseModulesStatus.success:
        return success();
      case ChooseModulesStatus.error:
        return error();
    }
  }
}

@freezed
sealed class ChooseModulesState with _$ChooseModulesState {
  const factory ChooseModulesState({
    @Default(ChooseModulesStatus.initial) ChooseModulesStatus status,
    @Default([]) List<Module> modules,
    @Default('') String error,
    @Default([]) List<int> selectedModuleIds,
  }) = _ChooseModulesState;
  const ChooseModulesState._();
  factory ChooseModulesState.initial() => const ChooseModulesState();

  bool get isLoading => status == ChooseModulesStatus.loading;
}
