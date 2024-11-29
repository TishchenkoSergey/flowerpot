abstract class GameParametersRepository {
  int getWaterParameter();

  Future<int> setWaterParameter({
    required int water,
  });

  int getLightParameter();

  Future<int> setLightParameter({
    required int light,
  });

  int getFertilizerParameter();

  Future<int> setFertilizerParameter({
    required int fertilizer,
  });
}
