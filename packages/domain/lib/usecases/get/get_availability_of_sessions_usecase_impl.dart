import 'package:injectable/injectable.dart';

import 'package:domain/repository/repository.dart';

import 'get_availability_of_sessions_usecase.dart';

@Injectable(as: GetAvailabilityOfSessionsUseCase)
class GetAvailabilityOfSessionsUseCaseImpl implements GetAvailabilityOfSessionsUseCase {
  GetAvailabilityOfSessionsUseCaseImpl(
    this.gameActivityRepository,
  );

  final GameActivityRepository gameActivityRepository;

  @override
  Future<bool> execute() async {
    return gameActivityRepository.getSessionActivity();
  }
}
