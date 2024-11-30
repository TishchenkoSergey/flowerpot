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
    return sessionRepository.changeSessionStatus(status);
  }
}
