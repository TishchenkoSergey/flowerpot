// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'session_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SessionModel {
  SessionStatus get status => throw _privateConstructorUsedError;
  FlowerpotParametersModel get parameters => throw _privateConstructorUsedError;
  Duration get startGameTime => throw _privateConstructorUsedError;

  /// Create a copy of SessionModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SessionModelCopyWith<SessionModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SessionModelCopyWith<$Res> {
  factory $SessionModelCopyWith(
          SessionModel value, $Res Function(SessionModel) then) =
      _$SessionModelCopyWithImpl<$Res, SessionModel>;
  @useResult
  $Res call(
      {SessionStatus status,
      FlowerpotParametersModel parameters,
      Duration startGameTime});
}

/// @nodoc
class _$SessionModelCopyWithImpl<$Res, $Val extends SessionModel>
    implements $SessionModelCopyWith<$Res> {
  _$SessionModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SessionModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? parameters = freezed,
    Object? startGameTime = null,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as SessionStatus,
      parameters: freezed == parameters
          ? _value.parameters
          : parameters // ignore: cast_nullable_to_non_nullable
              as FlowerpotParametersModel,
      startGameTime: null == startGameTime
          ? _value.startGameTime
          : startGameTime // ignore: cast_nullable_to_non_nullable
              as Duration,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SessionModelImplCopyWith<$Res>
    implements $SessionModelCopyWith<$Res> {
  factory _$$SessionModelImplCopyWith(
          _$SessionModelImpl value, $Res Function(_$SessionModelImpl) then) =
      __$$SessionModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {SessionStatus status,
      FlowerpotParametersModel parameters,
      Duration startGameTime});
}

/// @nodoc
class __$$SessionModelImplCopyWithImpl<$Res>
    extends _$SessionModelCopyWithImpl<$Res, _$SessionModelImpl>
    implements _$$SessionModelImplCopyWith<$Res> {
  __$$SessionModelImplCopyWithImpl(
      _$SessionModelImpl _value, $Res Function(_$SessionModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of SessionModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? parameters = freezed,
    Object? startGameTime = null,
  }) {
    return _then(_$SessionModelImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as SessionStatus,
      parameters: freezed == parameters
          ? _value.parameters
          : parameters // ignore: cast_nullable_to_non_nullable
              as FlowerpotParametersModel,
      startGameTime: null == startGameTime
          ? _value.startGameTime
          : startGameTime // ignore: cast_nullable_to_non_nullable
              as Duration,
    ));
  }
}

/// @nodoc

class _$SessionModelImpl extends _SessionModel {
  const _$SessionModelImpl(
      {required this.status,
      required this.parameters,
      required this.startGameTime})
      : super._();

  @override
  final SessionStatus status;
  @override
  final FlowerpotParametersModel parameters;
  @override
  final Duration startGameTime;

  @override
  String toString() {
    return 'SessionModel(status: $status, parameters: $parameters, startGameTime: $startGameTime)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SessionModelImpl &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality()
                .equals(other.parameters, parameters) &&
            (identical(other.startGameTime, startGameTime) ||
                other.startGameTime == startGameTime));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status,
      const DeepCollectionEquality().hash(parameters), startGameTime);

  /// Create a copy of SessionModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SessionModelImplCopyWith<_$SessionModelImpl> get copyWith =>
      __$$SessionModelImplCopyWithImpl<_$SessionModelImpl>(this, _$identity);
}

abstract class _SessionModel extends SessionModel {
  const factory _SessionModel(
      {required final SessionStatus status,
      required final FlowerpotParametersModel parameters,
      required final Duration startGameTime}) = _$SessionModelImpl;
  const _SessionModel._() : super._();

  @override
  SessionStatus get status;
  @override
  FlowerpotParametersModel get parameters;
  @override
  Duration get startGameTime;

  /// Create a copy of SessionModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SessionModelImplCopyWith<_$SessionModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
