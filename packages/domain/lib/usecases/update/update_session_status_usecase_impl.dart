import 'package:injectable/injectable.dart';

import 'package:domain/domain.dart';

import 'update_session_status_usecase.dart';

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

    return sessionRepository.changeSessionStatus(session.status);
  }
}
