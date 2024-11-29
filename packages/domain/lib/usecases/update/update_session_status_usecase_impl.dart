import 'package:injectable/injectable.dart';

import 'package:domain/domain.dart';

@Injectable(as: UpdateSessionStatusUsecase)
class UpdateSessionStatusUsecaseImpl implements UpdateSessionStatusUsecase {
  UpdateSessionStatusUsecaseImpl(
    this.sessionRepository,
  );

  final SessionRepository sessionRepository;

  @override
  Future<void> execute({
    required SessionStatus status,
  }) async {
    final session = await sessionRepository.getActiveSession();
    SessionModel updatedSession = SessionModel(
      status: status,
      parameters: session.parameters,
      startGameTime: session.startGameTime,
    );

    return sessionRepository.changeSessionStatus(updatedSession);
  }
}
