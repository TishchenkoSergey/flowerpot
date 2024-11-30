import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:domain/domain.dart';

part 'game_play_state.dart';

part 'game_play_cubit.freezed.dart';

class GamePlayCubit extends Cubit<GamePlayState> {
  GamePlayCubit({
    required this.getGameParametersUseCases,
    required this.updateSessionStatusUsecase,
  }) : super(const GamePlayState()) {
    init();
  }

  final GetGameParametersUseCases getGameParametersUseCases;
  final UpdateSessionStatusUsecase updateSessionStatusUsecase;

  Future<void> init() async {
    final parameters = getGameParametersUseCases.execute();
    emit(state.copyWith(parameters: parameters));
    await updateSessionStatusUsecase.execute(status: SessionStatus.running);
  }
}
