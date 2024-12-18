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
}
