import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'package:domain/domain.dart';

@Injectable(as: GameParametersRepository)
class GameParametersRepositoryImpl implements GameParametersRepository {
  GameParametersRepositoryImpl(this.sharedPreferences);

  final SharedPreferences sharedPreferences;

  static const _waterKey = 'waterKey';
  static const _lightKey = 'lightKey';
  static const _fertilizerKey = 'fertilizerKey';

  @override
  int getWaterParameter() {
    return sharedPreferences.getInt(_waterKey) ?? 50;
  }

  @override
  int getLightParameter() {
    return sharedPreferences.getInt(_lightKey) ?? 50;
  }

  @override
  int getFertilizerParameter() {
    return sharedPreferences.getInt(_fertilizerKey) ?? 50;
  }

  @override
  Future<int> setWaterParameter({
    required int water,
  }) async {
    await sharedPreferences.setInt(_waterKey, water);
    return water;
  }

  @override
  Future<int> setLightParameter({
    required int light,
  }) async {
    await sharedPreferences.setInt(_lightKey, light);
    return light;
  }

  @override
  Future<int> setFertilizerParameter({
    required int fertilizer,
  }) async {
    await sharedPreferences.setInt(_fertilizerKey, fertilizer);
    return fertilizer;
  }
}
