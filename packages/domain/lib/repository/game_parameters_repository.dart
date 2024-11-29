abstract class GameParametersRepository {
  int getWaterParameter();

  Future<int> setWaterParameter(
    int water,
  );

  int getLightParameter();

  Future<int> setLightParameter(
    int light,
  );

  int getFertilizerParameter();

  Future<int> setFertilizerParameter(
    int fertilizer,
  );
}
