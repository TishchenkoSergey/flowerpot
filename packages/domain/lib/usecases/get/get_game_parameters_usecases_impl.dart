import 'package:injectable/injectable.dart';

import 'package:domain/repository/repository.dart';
import '../../../../models/models.dart';

import 'get_game_parameters_usecases.dart';

@Injectable(as: GetGameParametersUseCases)
class GetGameParametersUseCasesImpl implements GetGameParametersUseCases {
  GetGameParametersUseCasesImpl(
      this.repository,
      );

  final GameParametersRepository repository;

  @override
  FlowerpotParametersModel execute() {
    final water = repository.getWaterParameter();
    final light = repository.getLightParameter();
    final fertilizer = repository.getFertilizerParameter();

    return FlowerpotParametersModel(
      water: water,
      light: light,
      fertilizer: fertilizer,
    );
  }
}
