import 'package:freezed_annotation/freezed_annotation.dart';

part 'flowerpot_params_model.freezed.dart';

@freezed
abstract class FlowerpotParamsModel with _$FlowerpotParamsModel {
  const factory FlowerpotParamsModel({
    required int water,
    required int light,
    required int fertilizer,
  }) = _FlowerpotParamsModel;
}
