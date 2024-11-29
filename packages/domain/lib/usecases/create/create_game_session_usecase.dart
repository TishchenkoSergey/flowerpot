import 'package:domain/models/models.dart';

abstract class CreateGameSessionUseCase {
  Future<SessionModel> execute({
    required FlowerpotParametersModel parameters,
  });
}
