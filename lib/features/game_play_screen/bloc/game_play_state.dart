part of 'game_play_cubit.dart';

enum OpenMenu {
  initial,
  water,
  light,
  fertilizer,
}

@freezed
class GamePlayState with _$GamePlayState {
  const factory GamePlayState({
    @Default(OpenMenu.initial) OpenMenu menu,
    Object? error,
  }) = _GamePlayState;

  const GamePlayState._();
}
