import 'package:injectable/injectable.dart';

import 'package:domain/domain.dart';

import '../../constants/constant.dart';

@Injectable(as: GetCalculatedParametersUsecase)
class GetCalculatedParametersUsecaseImpl
    implements GetCalculatedParametersUsecase {
  GetCalculatedParametersUsecaseImpl(
    this.sessionRepository,
  );

  final SessionRepository sessionRepository;

  @override
  Future<GameParametersModel> execute() async {
    final session = await sessionRepository.getLastSession();
    final now = DateTime.now();
    final duration = now.subtract(session.startGameTime);
    final subtractPoints = duration.second ~/ kPointDecreaseTimeout;
    final water = session.parameters.water - subtractPoints;
    final light = session.parameters.light - subtractPoints;
    final fertilizer = session.parameters.fertilizer - subtractPoints;
    return GameParametersModel(
      water: water,
      light: light,
      fertilizer: fertilizer,
    );
  }
}
