import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'package:domain/domain.dart';

import 'package:data/constants/constant.dart';

@Injectable(as: GameParametersRepository)
class GameParametersRepositoryImpl implements GameParametersRepository {
  GameParametersRepositoryImpl(this.sharedPreferences);

  final SharedPreferences sharedPreferences;

  static const _waterKey = 'waterKey';
  static const _lightKey = 'lightKey';
  static const _fertilizerKey = 'fertilizerKey';

  @override
  int getWaterParameter() {
    return sharedPreferences.getInt(_waterKey) ?? kFlowerpotParameterWater;
  }

  @override
  int getLightParameter() {
    return sharedPreferences.getInt(_lightKey) ?? kFlowerpotParameterLight;
  }

  @override
  int getFertilizerParameter() {
    return sharedPreferences.getInt(_fertilizerKey) ?? kFlowerpotParameterFertilizer;
  }

  @override
  Future<int> setWaterParameter(
    int water,
  ) async {
    await sharedPreferences.setInt(_waterKey, water);
    return water;
  }

  @override
  Future<int> setLightParameter(
    int light,
  ) async {
    await sharedPreferences.setInt(_lightKey, light);
    return light;
  }

  @override
  Future<int> setFertilizerParameter(
    int fertilizer,
  ) async {
    await sharedPreferences.setInt(_fertilizerKey, fertilizer);
    return fertilizer;
  }
}
