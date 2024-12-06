import '../models/models.dart';

abstract class GameParametersRepository {
  int getWaterParameter({
    GameTypeModel type = GameTypeModel.active,
  });

  Future<int> setWaterParameter({
    required int water,
    GameTypeModel type = GameTypeModel.active,
  });

  int getLightParameter({
    GameTypeModel type = GameTypeModel.active,
  });

  Future<int> setLightParameter({
    required int light,
    GameTypeModel type = GameTypeModel.active,
  });

  int getFertilizerParameter({
    GameTypeModel type = GameTypeModel.active,
  });

  Future<int> setFertilizerParameter({
    required int fertilizer,
    GameTypeModel type = GameTypeModel.active,
  });
}
