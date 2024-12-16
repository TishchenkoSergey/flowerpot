import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:domain/domain.dart';

part 'interactions_state.dart';

part 'interactions_cubit.freezed.dart';

class InteractionsCubit extends Cubit<InteractionsState> {
  InteractionsCubit({
    required this.getGameParametersUseCases,
    required this.updateGameSessionUsecase,
  }) : super(
          InteractionsState(
            parameters: getGameParametersUseCases.execute(),
          ),
        ) {
    init();
  }

  final GetGameParametersUseCases getGameParametersUseCases;
  final UpdateGameSessionUsecase updateGameSessionUsecase;

  Future<void> init() async {
    final paramsModel = getGameParametersUseCases.execute();

    emit(state.copyWith(parameters: paramsModel));
  }

  Future<void> changeCareLevel({
    int water = 0,
    int light = 0,
    int fertilizer = 0,
  }) async {
    final changedWater = state.parameters.water + water;
    final changedLight = state.parameters.light + light;
    final changedFertilizer = state.parameters.fertilizer + fertilizer;

    emit(
      InteractionsState(
        parameters: state.parameters.copyWith(
          water: changedWater,
          light: changedLight,
          fertilizer: changedFertilizer,
        ),
      ),
    );
    await updateGameSessionUsecase.execute(parameters: state.parameters);
  }
}
