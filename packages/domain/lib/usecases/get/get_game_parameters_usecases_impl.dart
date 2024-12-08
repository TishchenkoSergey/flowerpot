import 'package:injectable/injectable.dart';

import 'package:domain/repository/repository.dart';
import '../../../../models/models.dart';

import 'get_game_parameters_usecases.dart';

@Injectable(as: GetGameParametersUseCases)
class GetGameParametersUseCasesImpl implements GetGameParametersUseCases {
  GetGameParametersUseCasesImpl(
    @factoryParam this.type,
    this.repository,
  );

  final GameParametersRepository repository;
  final GameTypeModel type;

  @override
  GameParametersModel execute() {
    final water = repository.getWaterParameter(type: type);
    final light = repository.getLightParameter(type: type);
    final fertilizer = repository.getFertilizerParameter(type: type);

    return GameParametersModel(
      water: water,
      light: light,
      fertilizer: fertilizer,
    );
  }
}
