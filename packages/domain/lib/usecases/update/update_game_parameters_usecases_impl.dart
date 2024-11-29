import 'package:injectable/injectable.dart';

import 'package:domain/repository/repository.dart';
import 'package:domain/models/models.dart';

import 'update_game_parameters_usecases.dart';

@Injectable(as: UpdateGameParametersUsecases)
class UpdateGameParametersUsecase implements UpdateGameParametersUsecases {
  UpdateGameParametersUsecase(
    this.repository,
  );

  final GameSettingsRepository repository;

  @override
  Future<FlowerpotParametersModel> execute(FlowerpotParametersModel gameParameters) async {
    final water = await repository.setWaterParameter(
      water: gameParameters.water,
    );
    final light = await repository.setLightParameter(
      light: gameParameters.light,
    );
    final fertilizer = await repository.setFertilizerParameter(
      fertilizer: gameParameters.fertilizer,
    );

    return FlowerpotParametersModel(
      water: water,
      light: light,
      fertilizer: fertilizer,
    );
  }
}
