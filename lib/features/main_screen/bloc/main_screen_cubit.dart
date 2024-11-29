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
    final now = DateTime.now();
    final duration = Duration(
      hours: now.hour,
      minutes: now.minute,
      seconds: now.second,
    );

    await createGameSessionUseCase.execute(
      parameters: state.parameters!,
      status: SessionStatus.init,
      startGameTime: duration,
    );
  }

//Future<void> _getAvailabilityOfContinue() async {}
}
