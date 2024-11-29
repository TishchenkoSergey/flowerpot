part of 'game_play_cubit.dart';

@freezed
class GamePlayState with _$GamePlayState {
  const factory GamePlayState({
    FlowerpotParamsModel? params,
    Object? error,
  }) = _GamePlayState;

  const GamePlayState._();
}
