import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'package:domain/domain.dart';

import 'package:data/constants/constant.dart';

@Injectable(as: GameParametersRepository)
class GameParametersRepositoryImpl implements GameParametersRepository {
  GameParametersRepositoryImpl(this.sharedPreferences);

  final SharedPreferences sharedPreferences;

  static const _waterKey = 'water';
  static const _lightKey = 'light';
  static const _fertilizerKey = 'fertilizer';

  @override
  int getWaterParameter({
    GameParametersType type = GameParametersType.standard,
  }) {
    return sharedPreferences.getInt('$_waterKey$type') ?? kFlowerpotParameterWater;
  }

  @override
  int getLightParameter({
    GameParametersType type = GameParametersType.standard,
  }) {
    return sharedPreferences.getInt('$_lightKey$type') ?? kFlowerpotParameterLight;
  }

  @override
  int getFertilizerParameter({
    GameParametersType type = GameParametersType.standard,
  }) {
    return sharedPreferences.getInt('$_fertilizerKey$type') ?? kFlowerpotParameterFertilizer;
  }

  @override
  Future<int> setWaterParameter({
    required int water,
    GameParametersType type = GameParametersType.standard,
  }) async {
    await sharedPreferences.setInt('$_waterKey$type', water);
    return water;
  }

  @override
  Future<int> setLightParameter({
    required int light,
    GameParametersType type = GameParametersType.standard,
  }) async {
    await sharedPreferences.setInt('$_lightKey$type', light);
    return light;
  }

  @override
  Future<int> setFertilizerParameter({
    required int fertilizer,
    GameParametersType type = GameParametersType.standard,
  }) async {
    await sharedPreferences.setInt('$_fertilizerKey$type', fertilizer);
    return fertilizer;
  }
}
