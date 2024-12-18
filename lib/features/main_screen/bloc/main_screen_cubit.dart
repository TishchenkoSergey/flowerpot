import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:domain/domain.dart';

part 'main_screen_state.dart';

part 'main_screen_cubit.freezed.dart';

class MainScreenCubit extends Cubit<MainScreenState> {
  MainScreenCubit({
    required this.updateGameSessionUsecase,
    required this.getAvailabilityOfSessionsUseCase,
  }) : super(const MainScreenState()) {
    _getAvailabilityOfContinue();
  }

  final UpdateGameSessionUsecase updateGameSessionUsecase;
  final GetAvailabilityOfSessionsUseCase getAvailabilityOfSessionsUseCase;

  Future<void> setNewSession() async {
    await updateGameSessionUsecase.execute(
      status: SessionStatus.init,
    );
  }

  Future<void> _getAvailabilityOfContinue() async {
    final availability = await getAvailabilityOfSessionsUseCase.execute();
    await updateGameSessionUsecase.execute(
      status: SessionStatus.running,
    );
    emit(state.copyWith(continueAvailability: availability));
  }
}
