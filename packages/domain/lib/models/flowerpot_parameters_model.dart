import 'package:freezed_annotation/freezed_annotation.dart';

part 'flowerpot_parameters_model.freezed.dart';

@freezed
abstract class FlowerpotParametersModel with _$FlowerpotParametersModel {
  const factory FlowerpotParametersModel({
    required int water,
    required int light,
    required int fertilizer,
  }) = _FlowerpotParametersModel;
}
