import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'package:domain/domain.dart';

import '../constants/constant.dart';

@Injectable(as: GameParametersRepository)
class GameParametersRepositoryImpl implements GameParametersRepository {
  GameParametersRepositoryImpl(this.sharedPreferences);

  final SharedPreferences sharedPreferences;

  static const _waterKey = 'water';
  static const _lightKey = 'light';
  static const _fertilizerKey = 'fertilizer';

  @override
  int getWaterParameter({
    GameTypeModel type = GameTypeModel.standard,
  }) {
    return sharedPreferences.getInt('$_waterKey$type') ?? kFlowerpotParameterWater;
  }

  @override
  int getLightParameter({
    GameTypeModel type = GameTypeModel.standard,
  }) {
    return sharedPreferences.getInt('$_lightKey$type') ?? kFlowerpotParameterLight;
  }

  @override
  int getFertilizerParameter({
    GameTypeModel type = GameTypeModel.standard,
  }) {
    return sharedPreferences.getInt('$_fertilizerKey$type') ?? kFlowerpotParameterFertilizer;
  }

  @override
  Future<int> setWaterParameter({
    required int water,
    GameTypeModel type = GameTypeModel.standard,
  }) async {
    await sharedPreferences.setInt('$_waterKey$type', water);
    return water;
  }

  @override
  Future<int> setLightParameter({
    required int light,
    GameTypeModel type = GameTypeModel.standard,
  }) async {
    await sharedPreferences.setInt('$_lightKey$type', light);
    return light;
  }

  @override
  Future<int> setFertilizerParameter({
    required int fertilizer,
    GameTypeModel type = GameTypeModel.standard,
  }) async {
    await sharedPreferences.setInt('$_fertilizerKey$type', fertilizer);
    return fertilizer;
  }
}
