part of 'game_play_cubit.dart';

enum BackgroundStatus {
  normal,
  flabby,
  dry,
  rotten;

  bool get isInitial => this == normal;
}

@freezed
class GamePlayState with _$GamePlayState {
  const factory GamePlayState({
    @Default(SessionStatus.init) SessionStatus status,
    @Default(BackgroundStatus.normal) BackgroundStatus backgroundStatus,
    GameParametersModel? parameters,
    Object? error,
  }) = _GamePlayState;

  const GamePlayState._();
}
