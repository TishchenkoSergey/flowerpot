// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'main_screen_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$MainScreenState {
  bool get continueAvailability => throw _privateConstructorUsedError;
  Object? get error => throw _privateConstructorUsedError;

  /// Create a copy of MainScreenState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MainScreenStateCopyWith<MainScreenState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MainScreenStateCopyWith<$Res> {
  factory $MainScreenStateCopyWith(
          MainScreenState value, $Res Function(MainScreenState) then) =
      _$MainScreenStateCopyWithImpl<$Res, MainScreenState>;
  @useResult
  $Res call({bool continueAvailability, Object? error});
}

/// @nodoc
class _$MainScreenStateCopyWithImpl<$Res, $Val extends MainScreenState>
    implements $MainScreenStateCopyWith<$Res> {
  _$MainScreenStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MainScreenState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? continueAvailability = null,
    Object? error = freezed,
  }) {
    return _then(_value.copyWith(
      continueAvailability: null == continueAvailability
          ? _value.continueAvailability
          : continueAvailability // ignore: cast_nullable_to_non_nullable
              as bool,
      error: freezed == error ? _value.error : error,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MainScreenStateImplCopyWith<$Res>
    implements $MainScreenStateCopyWith<$Res> {
  factory _$$MainScreenStateImplCopyWith(_$MainScreenStateImpl value,
          $Res Function(_$MainScreenStateImpl) then) =
      __$$MainScreenStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool continueAvailability, Object? error});
}

/// @nodoc
class __$$MainScreenStateImplCopyWithImpl<$Res>
    extends _$MainScreenStateCopyWithImpl<$Res, _$MainScreenStateImpl>
    implements _$$MainScreenStateImplCopyWith<$Res> {
  __$$MainScreenStateImplCopyWithImpl(
      _$MainScreenStateImpl _value, $Res Function(_$MainScreenStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of MainScreenState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? continueAvailability = null,
    Object? error = freezed,
  }) {
    return _then(_$MainScreenStateImpl(
      continueAvailability: null == continueAvailability
          ? _value.continueAvailability
          : continueAvailability // ignore: cast_nullable_to_non_nullable
              as bool,
      error: freezed == error ? _value.error : error,
    ));
  }
}

/// @nodoc

class _$MainScreenStateImpl extends _MainScreenState {
  const _$MainScreenStateImpl({this.continueAvailability = false, this.error})
      : super._();

  @override
  @JsonKey()
  final bool continueAvailability;
  @override
  final Object? error;

  @override
  String toString() {
    return 'MainScreenState(continueAvailability: $continueAvailability, error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MainScreenStateImpl &&
            (identical(other.continueAvailability, continueAvailability) ||
                other.continueAvailability == continueAvailability) &&
            const DeepCollectionEquality().equals(other.error, error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, continueAvailability,
      const DeepCollectionEquality().hash(error));

  /// Create a copy of MainScreenState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MainScreenStateImplCopyWith<_$MainScreenStateImpl> get copyWith =>
      __$$MainScreenStateImplCopyWithImpl<_$MainScreenStateImpl>(
          this, _$identity);
}

abstract class _MainScreenState extends MainScreenState {
  const factory _MainScreenState(
      {final bool continueAvailability,
      final Object? error}) = _$MainScreenStateImpl;
  const _MainScreenState._() : super._();

  @override
  bool get continueAvailability;
  @override
  Object? get error;

  /// Create a copy of MainScreenState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MainScreenStateImplCopyWith<_$MainScreenStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
