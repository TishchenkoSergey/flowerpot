import 'package:freezed_annotation/freezed_annotation.dart';

part 'game_parameters_model.freezed.dart';

@freezed
abstract class GameParametersModel with _$GameParametersModel {
  const factory GameParametersModel({
    required int water,
    required int light,
    required int fertilizer,
  }) = _GameParametersModel;
}
