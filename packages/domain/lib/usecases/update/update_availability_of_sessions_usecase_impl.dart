import 'package:injectable/injectable.dart';

import 'package:domain/repository/repository.dart';

import 'update_availability_of_sessions_usecase.dart';

@Injectable(as: UpdateAvailabilityOfSessionsUsecase)
class UpdateAvailabilityOfSessionsUsecaseImpl implements UpdateAvailabilityOfSessionsUsecase {
  UpdateAvailabilityOfSessionsUsecaseImpl(
    this.gameActivityRepository,
  );

  final GameActivityRepository gameActivityRepository;

  @override
  Future<bool> execute({
    required bool sessionMark,
  }) async {
    await gameActivityRepository.setSessionActivity(sessionMark);
    return sessionMark;
  }
}
