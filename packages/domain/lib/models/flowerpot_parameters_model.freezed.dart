// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'flowerpot_parameters_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$FlowerpotParametersModel {
  int get water => throw _privateConstructorUsedError;
  int get light => throw _privateConstructorUsedError;
  int get fertilizer => throw _privateConstructorUsedError;

  /// Create a copy of FlowerpotParametersModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FlowerpotParametersModelCopyWith<FlowerpotParametersModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FlowerpotParametersModelCopyWith<$Res> {
  factory $FlowerpotParametersModelCopyWith(FlowerpotParametersModel value,
          $Res Function(FlowerpotParametersModel) then) =
      _$FlowerpotParametersModelCopyWithImpl<$Res, FlowerpotParametersModel>;
  @useResult
  $Res call({int water, int light, int fertilizer});
}

/// @nodoc
class _$FlowerpotParametersModelCopyWithImpl<$Res,
        $Val extends FlowerpotParametersModel>
    implements $FlowerpotParametersModelCopyWith<$Res> {
  _$FlowerpotParametersModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FlowerpotParametersModel
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
abstract class _$$FlowerpotParametersModelImplCopyWith<$Res>
    implements $FlowerpotParametersModelCopyWith<$Res> {
  factory _$$FlowerpotParametersModelImplCopyWith(
          _$FlowerpotParametersModelImpl value,
          $Res Function(_$FlowerpotParametersModelImpl) then) =
      __$$FlowerpotParametersModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int water, int light, int fertilizer});
}

/// @nodoc
class __$$FlowerpotParametersModelImplCopyWithImpl<$Res>
    extends _$FlowerpotParametersModelCopyWithImpl<$Res,
        _$FlowerpotParametersModelImpl>
    implements _$$FlowerpotParametersModelImplCopyWith<$Res> {
  __$$FlowerpotParametersModelImplCopyWithImpl(
      _$FlowerpotParametersModelImpl _value,
      $Res Function(_$FlowerpotParametersModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of FlowerpotParametersModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? water = null,
    Object? light = null,
    Object? fertilizer = null,
  }) {
    return _then(_$FlowerpotParametersModelImpl(
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

class _$FlowerpotParametersModelImpl implements _FlowerpotParametersModel {
  const _$FlowerpotParametersModelImpl(
      {required this.water, required this.light, required this.fertilizer});

  @override
  final int water;
  @override
  final int light;
  @override
  final int fertilizer;

  @override
  String toString() {
    return 'FlowerpotParametersModel(water: $water, light: $light, fertilizer: $fertilizer)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FlowerpotParametersModelImpl &&
            (identical(other.water, water) || other.water == water) &&
            (identical(other.light, light) || other.light == light) &&
            (identical(other.fertilizer, fertilizer) ||
                other.fertilizer == fertilizer));
  }

  @override
  int get hashCode => Object.hash(runtimeType, water, light, fertilizer);

  /// Create a copy of FlowerpotParametersModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FlowerpotParametersModelImplCopyWith<_$FlowerpotParametersModelImpl>
      get copyWith => __$$FlowerpotParametersModelImplCopyWithImpl<
          _$FlowerpotParametersModelImpl>(this, _$identity);
}

abstract class _FlowerpotParametersModel implements FlowerpotParametersModel {
  const factory _FlowerpotParametersModel(
      {required final int water,
      required final int light,
      required final int fertilizer}) = _$FlowerpotParametersModelImpl;

  @override
  int get water;
  @override
  int get light;
  @override
  int get fertilizer;

  /// Create a copy of FlowerpotParametersModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FlowerpotParametersModelImplCopyWith<_$FlowerpotParametersModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
