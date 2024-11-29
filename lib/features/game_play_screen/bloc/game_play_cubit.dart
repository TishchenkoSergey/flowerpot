import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:domain/domain.dart';

part 'game_play_state.dart';

part 'game_play_cubit.freezed.dart';

class GamePlayCubit extends Cubit<GamePlayState> {
  GamePlayCubit({
    required this.getGameParametersUseCases,
  }) : super(GamePlayState()) {
    init();
  }

  final GetGameParametersUseCases getGameParametersUseCases;

  Future<void> init() async {
    final params = getGameParametersUseCases.execute();

    emit(state.copyWith(params: params));
  }
}
