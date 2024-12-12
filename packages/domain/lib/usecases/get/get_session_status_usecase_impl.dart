import 'package:injectable/injectable.dart';

import 'package:domain/models/models.dart';
import 'package:domain/repository/repository.dart';

import 'get_session_status_usecase.dart';

@Injectable(as: GetSessionStatusUsecase)
class GetSessionStatusUsecaseImpl implements GetSessionStatusUsecase {
  GetSessionStatusUsecaseImpl(
    this.sessionRepository,
  );

  final SessionRepository sessionRepository;

  @override
  Future<SessionStatus> execute() async {
    final session = await sessionRepository.getLastSession();
    return session.status;
  }
}
