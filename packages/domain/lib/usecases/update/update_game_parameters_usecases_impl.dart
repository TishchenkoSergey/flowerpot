import 'package:injectable/injectable.dart';

import 'package:domain/repository/repository.dart';
import 'package:domain/models/models.dart';

import 'update_game_parameters_usecases.dart';

@Injectable(as: UpdateGameParametersUsecases)
class UpdateGameParametersUsecase implements UpdateGameParametersUsecases {
  UpdateGameParametersUsecase(
    this.repository,
  );

  final GameParametersRepository repository;

  @override
  Future<FlowerpotParametersModel> execute(FlowerpotParametersModel gameParameters) async {
    final water = await repository.setWaterParameter(
      gameParameters.water,
    );
    final light = await repository.setLightParameter(
      gameParameters.light,
    );
    final fertilizer = await repository.setFertilizerParameter(
      gameParameters.fertilizer,
    );

    return FlowerpotParametersModel(
      water: water,
      light: light,
      fertilizer: fertilizer,
    );
  }
}
