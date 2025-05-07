part of 'state.dart';

@freezed
sealed class ProcessState with _$ProcessState {
  bool get inProgress => this is ProcessInProgressState;

  const ProcessState._();

  const factory ProcessState.initial() = ProcessInitialState;
  const factory ProcessState.inProgress() = ProcessInProgressState;
  const factory ProcessState.success() = ProcessSuccessState;
  const factory ProcessState.error({required Object e}) = ProcessErrorState;
}
