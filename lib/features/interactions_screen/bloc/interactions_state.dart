part of 'interactions_cubit.dart';

@freezed
class InteractionsState with _$InteractionsState {
  const factory InteractionsState({
    required GameParametersModel parameters,
    Object? error,
  }) = _InteractionsState;

  const InteractionsState._();
}
