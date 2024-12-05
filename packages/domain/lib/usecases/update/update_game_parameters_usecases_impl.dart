import 'package:injectable/injectable.dart';

import 'package:domain/repository/repository.dart';
import 'package:domain/models/models.dart';

import 'update_game_parameters_usecases.dart';

@Injectable(as: UpdateGameParametersUsecases)
class UpdateGameParametersUsecase implements UpdateGameParametersUsecases {
  UpdateGameParametersUsecase(
    @factoryParam this.type,
    this.repository,
  );

  final GameParametersRepository repository;
  final GameParametersType type;

  @override
  Future<FlowerpotParametersModel> execute(FlowerpotParametersModel gameParameters) async {
    final water = await repository.setWaterParameter(
      water: gameParameters.water,
      type: type,
    );
    final light = await repository.setLightParameter(
      light: gameParameters.light,
      type: type,
    );
    final fertilizer = await repository.setFertilizerParameter(
      fertilizer: gameParameters.fertilizer,
      type: type,
    );

    return FlowerpotParametersModel(
      water: water,
      light: light,
      fertilizer: fertilizer,
    );
  }
}
