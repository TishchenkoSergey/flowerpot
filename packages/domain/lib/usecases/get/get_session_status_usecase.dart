import 'package:domain/models/models.dart';

abstract class GetSessionStatusUsecase {
  Future<SessionStatus> execute();
}
