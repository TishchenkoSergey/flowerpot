// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'interactions_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$InteractionsState {
  GameParametersModel get parameters => throw _privateConstructorUsedError;
  Object? get error => throw _privateConstructorUsedError;

  /// Create a copy of InteractionsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $InteractionsStateCopyWith<InteractionsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InteractionsStateCopyWith<$Res> {
  factory $InteractionsStateCopyWith(
          InteractionsState value, $Res Function(InteractionsState) then) =
      _$InteractionsStateCopyWithImpl<$Res, InteractionsState>;
  @useResult
  $Res call({GameParametersModel parameters, Object? error});

  $GameParametersModelCopyWith<$Res> get parameters;
}

/// @nodoc
class _$InteractionsStateCopyWithImpl<$Res, $Val extends InteractionsState>
    implements $InteractionsStateCopyWith<$Res> {
  _$InteractionsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of InteractionsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? parameters = null,
    Object? error = freezed,
  }) {
    return _then(_value.copyWith(
      parameters: null == parameters
          ? _value.parameters
          : parameters // ignore: cast_nullable_to_non_nullable
              as GameParametersModel,
      error: freezed == error ? _value.error : error,
    ) as $Val);
  }

  /// Create a copy of InteractionsState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $GameParametersModelCopyWith<$Res> get parameters {
    return $GameParametersModelCopyWith<$Res>(_value.parameters, (value) {
      return _then(_value.copyWith(parameters: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$InteractionsStateImplCopyWith<$Res>
    implements $InteractionsStateCopyWith<$Res> {
  factory _$$InteractionsStateImplCopyWith(_$InteractionsStateImpl value,
          $Res Function(_$InteractionsStateImpl) then) =
      __$$InteractionsStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({GameParametersModel parameters, Object? error});

  @override
  $GameParametersModelCopyWith<$Res> get parameters;
}

/// @nodoc
class __$$InteractionsStateImplCopyWithImpl<$Res>
    extends _$InteractionsStateCopyWithImpl<$Res, _$InteractionsStateImpl>
    implements _$$InteractionsStateImplCopyWith<$Res> {
  __$$InteractionsStateImplCopyWithImpl(_$InteractionsStateImpl _value,
      $Res Function(_$InteractionsStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of InteractionsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? parameters = null,
    Object? error = freezed,
  }) {
    return _then(_$InteractionsStateImpl(
      parameters: null == parameters
          ? _value.parameters
          : parameters // ignore: cast_nullable_to_non_nullable
              as GameParametersModel,
      error: freezed == error ? _value.error : error,
    ));
  }
}

/// @nodoc

class _$InteractionsStateImpl extends _InteractionsState {
  const _$InteractionsStateImpl({required this.parameters, this.error})
      : super._();

  @override
  final GameParametersModel parameters;
  @override
  final Object? error;

  @override
  String toString() {
    return 'InteractionsState(parameters: $parameters, error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InteractionsStateImpl &&
            (identical(other.parameters, parameters) ||
                other.parameters == parameters) &&
            const DeepCollectionEquality().equals(other.error, error));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, parameters, const DeepCollectionEquality().hash(error));

  /// Create a copy of InteractionsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$InteractionsStateImplCopyWith<_$InteractionsStateImpl> get copyWith =>
      __$$InteractionsStateImplCopyWithImpl<_$InteractionsStateImpl>(
          this, _$identity);
}

abstract class _InteractionsState extends InteractionsState {
  const factory _InteractionsState(
      {required final GameParametersModel parameters,
      final Object? error}) = _$InteractionsStateImpl;
  const _InteractionsState._() : super._();

  @override
  GameParametersModel get parameters;
  @override
  Object? get error;

  /// Create a copy of InteractionsState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$InteractionsStateImplCopyWith<_$InteractionsStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
