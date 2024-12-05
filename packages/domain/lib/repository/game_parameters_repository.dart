import '../models/models.dart';

abstract class GameParametersRepository {
  int getWaterParameter({
    GameParametersType type = GameParametersType.active,
  });

  Future<int> setWaterParameter({
    required int water,
    GameParametersType type = GameParametersType.active,
  });

  int getLightParameter({
    GameParametersType type = GameParametersType.active,
  });

  Future<int> setLightParameter({
    required int light,
    GameParametersType type = GameParametersType.active,
  });

  int getFertilizerParameter({
    GameParametersType type = GameParametersType.active,
  });

  Future<int> setFertilizerParameter({
    required int fertilizer,
    GameParametersType type = GameParametersType.active,
  });
}
