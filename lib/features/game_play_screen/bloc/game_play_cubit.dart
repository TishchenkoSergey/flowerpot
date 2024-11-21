import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'game_play_state.dart';

part 'game_play_cubit.freezed.dart';

class GamePlayCubit extends Cubit<GamePlayState> {
  GamePlayCubit() : super(const GamePlayState());

  void openWaterMenu() {
    [
      state.copyWith(menu: OpenMenu.water),
      state.copyWith(menu: OpenMenu.initial),
    ].forEach(emit);
  }

  void openLightMenu() {
    [
      state.copyWith(menu: OpenMenu.light),
      state.copyWith(menu: OpenMenu.initial),
    ].forEach(emit);
  }

  void openFertilizerMenu() {
    [
      state.copyWith(menu: OpenMenu.fertilizer),
      state.copyWith(menu: OpenMenu.initial),
    ].forEach(emit);
  }
}
