import 'package:injectable/injectable.dart';

import 'package:domain/repository/repository.dart';

import 'get_game_start_time_usecase.dart';

@Injectable(as: GetGameStartTimeUsecase)
class GetGameStartTimeUsecaseImpl implements GetGameStartTimeUsecase {
  GetGameStartTimeUsecaseImpl(
    this.sessionRepository,
  );

  final SessionRepository sessionRepository;

  @override
  Future<Duration> execute() async {
    final session = await sessionRepository.getLastSession();
    return session.startGameTime;
  }
}
