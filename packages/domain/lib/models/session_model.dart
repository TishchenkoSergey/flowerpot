import 'package:freezed_annotation/freezed_annotation.dart';

import 'models.dart';

part 'session_model.freezed.dart';

abstract class BaseSessionModel {
  int? get id;
  SessionStatus? get status;
}

@freezed
abstract class SessionModel with _$SessionModel implements BaseSessionModel {
  const factory SessionModel({
    required int id,
    required SessionStatus status,
    required FlowerpotParametersModel parameters,
    required Duration startGameTime,
  }) = _SessionModel;

  const SessionModel._();
}
