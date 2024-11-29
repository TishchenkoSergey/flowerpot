import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:domain/domain.dart';

part 'main_screen_state.dart';

part 'main_screen_cubit.freezed.dart';

class MainScreenCubit extends Cubit<MainScreenState> {
  MainScreenCubit({
    required this.createGameSessionUseCase,
    required this.getGameParametersUseCases,
  }) : super(const MainScreenState()) {
    init();
  }

  final GetGameParametersUseCases getGameParametersUseCases;
  final CreateGameSessionUseCase createGameSessionUseCase;

  Future<void> init() async {
    final parameters = getGameParametersUseCases.execute();

    emit(state.copyWith(
      parameters: parameters,
    ));
  }

  Future<void> setSession() async {
    await createGameSessionUseCase.execute(parameters: state.parameters!);
  }

  //Future<void> _getAvailabilityOfContinue() async {}
}
