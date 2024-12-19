// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'game_play_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$GamePlayState {
  SessionStatus get status => throw _privateConstructorUsedError;
  BackgroundStatus get backgroundStatus => throw _privateConstructorUsedError;
  GameParametersModel? get parameters => throw _privateConstructorUsedError;
  Object? get error => throw _privateConstructorUsedError;

  /// Create a copy of GamePlayState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GamePlayStateCopyWith<GamePlayState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GamePlayStateCopyWith<$Res> {
  factory $GamePlayStateCopyWith(
          GamePlayState value, $Res Function(GamePlayState) then) =
      _$GamePlayStateCopyWithImpl<$Res, GamePlayState>;
  @useResult
  $Res call(
      {SessionStatus status,
      BackgroundStatus backgroundStatus,
      GameParametersModel? parameters,
      Object? error});

  $GameParametersModelCopyWith<$Res>? get parameters;
}

/// @nodoc
class _$GamePlayStateCopyWithImpl<$Res, $Val extends GamePlayState>
    implements $GamePlayStateCopyWith<$Res> {
  _$GamePlayStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GamePlayState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? backgroundStatus = null,
    Object? parameters = freezed,
    Object? error = freezed,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as SessionStatus,
      backgroundStatus: null == backgroundStatus
          ? _value.backgroundStatus
          : backgroundStatus // ignore: cast_nullable_to_non_nullable
              as BackgroundStatus,
      parameters: freezed == parameters
          ? _value.parameters
          : parameters // ignore: cast_nullable_to_non_nullable
              as GameParametersModel?,
      error: freezed == error ? _value.error : error,
    ) as $Val);
  }

  /// Create a copy of GamePlayState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $GameParametersModelCopyWith<$Res>? get parameters {
    if (_value.parameters == null) {
      return null;
    }

    return $GameParametersModelCopyWith<$Res>(_value.parameters!, (value) {
      return _then(_value.copyWith(parameters: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$GamePlayStateImplCopyWith<$Res>
    implements $GamePlayStateCopyWith<$Res> {
  factory _$$GamePlayStateImplCopyWith(
          _$GamePlayStateImpl value, $Res Function(_$GamePlayStateImpl) then) =
      __$$GamePlayStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {SessionStatus status,
      BackgroundStatus backgroundStatus,
      GameParametersModel? parameters,
      Object? error});

  @override
  $GameParametersModelCopyWith<$Res>? get parameters;
}

/// @nodoc
class __$$GamePlayStateImplCopyWithImpl<$Res>
    extends _$GamePlayStateCopyWithImpl<$Res, _$GamePlayStateImpl>
    implements _$$GamePlayStateImplCopyWith<$Res> {
  __$$GamePlayStateImplCopyWithImpl(
      _$GamePlayStateImpl _value, $Res Function(_$GamePlayStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of GamePlayState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? backgroundStatus = null,
    Object? parameters = freezed,
    Object? error = freezed,
  }) {
    return _then(_$GamePlayStateImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as SessionStatus,
      backgroundStatus: null == backgroundStatus
          ? _value.backgroundStatus
          : backgroundStatus // ignore: cast_nullable_to_non_nullable
              as BackgroundStatus,
      parameters: freezed == parameters
          ? _value.parameters
          : parameters // ignore: cast_nullable_to_non_nullable
              as GameParametersModel?,
      error: freezed == error ? _value.error : error,
    ));
  }
}

/// @nodoc

class _$GamePlayStateImpl extends _GamePlayState {
  const _$GamePlayStateImpl(
      {this.status = SessionStatus.init,
      this.backgroundStatus = BackgroundStatus.normal,
      this.parameters,
      this.error})
      : super._();

  @override
  @JsonKey()
  final SessionStatus status;
  @override
  @JsonKey()
  final BackgroundStatus backgroundStatus;
  @override
  final GameParametersModel? parameters;
  @override
  final Object? error;

  @override
  String toString() {
    return 'GamePlayState(status: $status, backgroundStatus: $backgroundStatus, parameters: $parameters, error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GamePlayStateImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.backgroundStatus, backgroundStatus) ||
                other.backgroundStatus == backgroundStatus) &&
            (identical(other.parameters, parameters) ||
                other.parameters == parameters) &&
            const DeepCollectionEquality().equals(other.error, error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status, backgroundStatus,
      parameters, const DeepCollectionEquality().hash(error));

  /// Create a copy of GamePlayState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GamePlayStateImplCopyWith<_$GamePlayStateImpl> get copyWith =>
      __$$GamePlayStateImplCopyWithImpl<_$GamePlayStateImpl>(this, _$identity);
}

abstract class _GamePlayState extends GamePlayState {
  const factory _GamePlayState(
      {final SessionStatus status,
      final BackgroundStatus backgroundStatus,
      final GameParametersModel? parameters,
      final Object? error}) = _$GamePlayStateImpl;
  const _GamePlayState._() : super._();

  @override
  SessionStatus get status;
  @override
  BackgroundStatus get backgroundStatus;
  @override
  GameParametersModel? get parameters;
  @override
  Object? get error;

  /// Create a copy of GamePlayState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GamePlayStateImplCopyWith<_$GamePlayStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
