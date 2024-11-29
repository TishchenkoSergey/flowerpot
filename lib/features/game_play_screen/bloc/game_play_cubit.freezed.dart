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
  FlowerpotParamsModel? get params => throw _privateConstructorUsedError;
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
  $Res call({FlowerpotParamsModel? params, Object? error});

  $FlowerpotParamsModelCopyWith<$Res>? get params;
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
    Object? params = freezed,
    Object? error = freezed,
  }) {
    return _then(_value.copyWith(
      params: freezed == params
          ? _value.params
          : params // ignore: cast_nullable_to_non_nullable
              as FlowerpotParamsModel?,
      error: freezed == error ? _value.error : error,
    ) as $Val);
  }

  /// Create a copy of GamePlayState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $FlowerpotParamsModelCopyWith<$Res>? get params {
    if (_value.params == null) {
      return null;
    }

    return $FlowerpotParamsModelCopyWith<$Res>(_value.params!, (value) {
      return _then(_value.copyWith(params: value) as $Val);
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
  $Res call({FlowerpotParamsModel? params, Object? error});

  @override
  $FlowerpotParamsModelCopyWith<$Res>? get params;
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
    Object? params = freezed,
    Object? error = freezed,
  }) {
    return _then(_$GamePlayStateImpl(
      params: freezed == params
          ? _value.params
          : params // ignore: cast_nullable_to_non_nullable
              as FlowerpotParamsModel?,
      error: freezed == error ? _value.error : error,
    ));
  }
}

/// @nodoc

class _$GamePlayStateImpl extends _GamePlayState {
  const _$GamePlayStateImpl({this.params, this.error}) : super._();

  @override
  final FlowerpotParamsModel? params;
  @override
  final Object? error;

  @override
  String toString() {
    return 'GamePlayState(params: $params, error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GamePlayStateImpl &&
            (identical(other.params, params) || other.params == params) &&
            const DeepCollectionEquality().equals(other.error, error));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, params, const DeepCollectionEquality().hash(error));

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
      {final FlowerpotParamsModel? params,
      final Object? error}) = _$GamePlayStateImpl;
  const _GamePlayState._() : super._();

  @override
  FlowerpotParamsModel? get params;
  @override
  Object? get error;

  /// Create a copy of GamePlayState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GamePlayStateImplCopyWith<_$GamePlayStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
