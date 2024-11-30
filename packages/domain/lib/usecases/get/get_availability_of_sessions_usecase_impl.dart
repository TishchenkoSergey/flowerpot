import 'package:injectable/injectable.dart';

import 'package:domain/models/models.dart';
import 'package:domain/repository/repository.dart';

import 'get_availability_of_sessions_usecase.dart';

@Injectable(as: GetAvailabilityOfSessionsUseCase)
class GetAvailabilityOfSessionsUseCaseImpl implements GetAvailabilityOfSessionsUseCase {
  GetAvailabilityOfSessionsUseCaseImpl(
    this.sessionRepository,
  );

  final SessionRepository sessionRepository;

  @override
  Future<bool> execute() async {
    final session = await sessionRepository.getLastSession();
    return session.status == SessionStatus.running;
  }
}
