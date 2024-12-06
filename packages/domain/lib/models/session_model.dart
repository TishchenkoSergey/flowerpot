import 'package:freezed_annotation/freezed_annotation.dart';

import 'models.dart';

part 'session_model.freezed.dart';

abstract class BaseSessionModel {
  SessionStatus? get status;

  GameParametersModel? get parameters;

  Duration? get startGameTime;
}

@freezed
abstract class SessionModel with _$SessionModel implements BaseSessionModel {
  const factory SessionModel({
    required SessionStatus status,
    required GameParametersModel parameters,
    required Duration startGameTime,
  }) = _SessionModel;

  const SessionModel._();
}
