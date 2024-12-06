// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'game_parameters_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$GameParametersModel {
  int get water => throw _privateConstructorUsedError;
  int get light => throw _privateConstructorUsedError;
  int get fertilizer => throw _privateConstructorUsedError;

  /// Create a copy of GameParametersModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GameParametersModelCopyWith<GameParametersModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GameParametersModelCopyWith<$Res> {
  factory $GameParametersModelCopyWith(
          GameParametersModel value, $Res Function(GameParametersModel) then) =
      _$GameParametersModelCopyWithImpl<$Res, GameParametersModel>;
  @useResult
  $Res call({int water, int light, int fertilizer});
}

/// @nodoc
class _$GameParametersModelCopyWithImpl<$Res, $Val extends GameParametersModel>
    implements $GameParametersModelCopyWith<$Res> {
  _$GameParametersModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GameParametersModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? water = null,
    Object? light = null,
    Object? fertilizer = null,
  }) {
    return _then(_value.copyWith(
      water: null == water
          ? _value.water
          : water // ignore: cast_nullable_to_non_nullable
              as int,
      light: null == light
          ? _value.light
          : light // ignore: cast_nullable_to_non_nullable
              as int,
      fertilizer: null == fertilizer
          ? _value.fertilizer
          : fertilizer // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GameParametersModelImplCopyWith<$Res>
    implements $GameParametersModelCopyWith<$Res> {
  factory _$$GameParametersModelImplCopyWith(_$GameParametersModelImpl value,
          $Res Function(_$GameParametersModelImpl) then) =
      __$$GameParametersModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int water, int light, int fertilizer});
}

/// @nodoc
class __$$GameParametersModelImplCopyWithImpl<$Res>
    extends _$GameParametersModelCopyWithImpl<$Res, _$GameParametersModelImpl>
    implements _$$GameParametersModelImplCopyWith<$Res> {
  __$$GameParametersModelImplCopyWithImpl(_$GameParametersModelImpl _value,
      $Res Function(_$GameParametersModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of GameParametersModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? water = null,
    Object? light = null,
    Object? fertilizer = null,
  }) {
    return _then(_$GameParametersModelImpl(
      water: null == water
          ? _value.water
          : water // ignore: cast_nullable_to_non_nullable
              as int,
      light: null == light
          ? _value.light
          : light // ignore: cast_nullable_to_non_nullable
              as int,
      fertilizer: null == fertilizer
          ? _value.fertilizer
          : fertilizer // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$GameParametersModelImpl implements _GameParametersModel {
  const _$GameParametersModelImpl(
      {required this.water, required this.light, required this.fertilizer});

  @override
  final int water;
  @override
  final int light;
  @override
  final int fertilizer;

  @override
  String toString() {
    return 'GameParametersModel(water: $water, light: $light, fertilizer: $fertilizer)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GameParametersModelImpl &&
            (identical(other.water, water) || other.water == water) &&
            (identical(other.light, light) || other.light == light) &&
            (identical(other.fertilizer, fertilizer) ||
                other.fertilizer == fertilizer));
  }

  @override
  int get hashCode => Object.hash(runtimeType, water, light, fertilizer);

  /// Create a copy of GameParametersModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GameParametersModelImplCopyWith<_$GameParametersModelImpl> get copyWith =>
      __$$GameParametersModelImplCopyWithImpl<_$GameParametersModelImpl>(
          this, _$identity);
}

abstract class _GameParametersModel implements GameParametersModel {
  const factory _GameParametersModel(
      {required final int water,
      required final int light,
      required final int fertilizer}) = _$GameParametersModelImpl;

  @override
  int get water;
  @override
  int get light;
  @override
  int get fertilizer;

  /// Create a copy of GameParametersModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GameParametersModelImplCopyWith<_$GameParametersModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
