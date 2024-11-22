import 'package:freezed_annotation/freezed_annotation.dart';

import 'models.dart';

part 'session_model.freezed.dart';

const FlowerpotParamsModel _initialParams = FlowerpotParamsModel(
  water: 100,
  light: 100,
  fertilizer: 100,
);

abstract class BaseSessionModel {
  int? get id;
  SessionStatus? get status;
}

@freezed
abstract class SessionModel with _$SessionModel implements BaseSessionModel {
  const factory SessionModel({
    required int id,
    required SessionStatus status,
    @Default(_initialParams) FlowerpotParamsModel params,
  }) = _SessionModel;

  const SessionModel._();
}
