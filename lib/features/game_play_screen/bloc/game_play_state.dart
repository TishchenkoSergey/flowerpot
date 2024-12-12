part of 'game_play_cubit.dart';

@freezed
class GamePlayState with _$GamePlayState {
  const factory GamePlayState({
    @Default(SessionStatus.init) SessionStatus status,
    GameParametersModel? parameters,
    Object? error,
  }) = _GamePlayState;

  const GamePlayState._();
}
