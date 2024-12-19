import 'package:freezed_annotation/freezed_annotation.dart';

part 'game_parameters_model.freezed.dart';

@freezed
abstract class GameParametersModel with _$GameParametersModel {
  const factory GameParametersModel({
    required int water,
    required int light,
    required int fertilizer,
  }) = _GameParametersModel;

  const GameParametersModel._();

  bool isParameterInRange(int value) => value > 0 && value < 100;

  bool allInRange() => isParameterInRange(water) && isParameterInRange(light) && isParameterInRange(fertilizer);

  int getMaxDeviation() {
    final parameters = [water, light, fertilizer];
    final deviations = parameters.map((value) => (value - 50).abs()).toList();
    return deviations.reduce((a, b) => a > b ? a : b);
  }
}
