part of 'interactions_cubit.dart';

@freezed
class InteractionsState with _$InteractionsState {
  const factory InteractionsState({
    required FlowerpotParamsModel paramsModel,
    Object? error,
  }) = _InteractionsState;

  const InteractionsState._();
}
