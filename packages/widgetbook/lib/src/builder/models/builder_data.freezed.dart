// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'builder_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$BuilderData {
  Widget Function(BuildContext, Widget) get appBuilder =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $BuilderDataCopyWith<BuilderData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BuilderDataCopyWith<$Res> {
  factory $BuilderDataCopyWith(
          BuilderData value, $Res Function(BuilderData) then) =
      _$BuilderDataCopyWithImpl<$Res>;
  $Res call({Widget Function(BuildContext, Widget) appBuilder});
}

/// @nodoc
class _$BuilderDataCopyWithImpl<$Res> implements $BuilderDataCopyWith<$Res> {
  _$BuilderDataCopyWithImpl(this._value, this._then);

  final BuilderData _value;
  // ignore: unused_field
  final $Res Function(BuilderData) _then;

  @override
  $Res call({
    Object? appBuilder = freezed,
  }) {
    return _then(_value.copyWith(
      appBuilder: appBuilder == freezed
          ? _value.appBuilder
          : appBuilder // ignore: cast_nullable_to_non_nullable
              as Widget Function(BuildContext, Widget),
    ));
  }
}

/// @nodoc
abstract class _$$_BuilderDataCopyWith<$Res>
    implements $BuilderDataCopyWith<$Res> {
  factory _$$_BuilderDataCopyWith(
          _$_BuilderData value, $Res Function(_$_BuilderData) then) =
      __$$_BuilderDataCopyWithImpl<$Res>;
  @override
  $Res call({Widget Function(BuildContext, Widget) appBuilder});
}

/// @nodoc
class __$$_BuilderDataCopyWithImpl<$Res> extends _$BuilderDataCopyWithImpl<$Res>
    implements _$$_BuilderDataCopyWith<$Res> {
  __$$_BuilderDataCopyWithImpl(
      _$_BuilderData _value, $Res Function(_$_BuilderData) _then)
      : super(_value, (v) => _then(v as _$_BuilderData));

  @override
  _$_BuilderData get _value => super._value as _$_BuilderData;

  @override
  $Res call({
    Object? appBuilder = freezed,
  }) {
    return _then(_$_BuilderData(
      appBuilder: appBuilder == freezed
          ? _value.appBuilder
          : appBuilder // ignore: cast_nullable_to_non_nullable
              as Widget Function(BuildContext, Widget),
    ));
  }
}

/// @nodoc

class _$_BuilderData implements _BuilderData {
  _$_BuilderData({required this.appBuilder});

  @override
  final Widget Function(BuildContext, Widget) appBuilder;

  @override
  String toString() {
    return 'BuilderData(appBuilder: $appBuilder)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_BuilderData &&
            (identical(other.appBuilder, appBuilder) ||
                other.appBuilder == appBuilder));
  }

  @override
  int get hashCode => Object.hash(runtimeType, appBuilder);

  @JsonKey(ignore: true)
  @override
  _$$_BuilderDataCopyWith<_$_BuilderData> get copyWith =>
      __$$_BuilderDataCopyWithImpl<_$_BuilderData>(this, _$identity);
}

abstract class _BuilderData implements BuilderData {
  factory _BuilderData(
          {required final Widget Function(BuildContext, Widget) appBuilder}) =
      _$_BuilderData;

  @override
  Widget Function(BuildContext, Widget) get appBuilder;
  @override
  @JsonKey(ignore: true)
  _$$_BuilderDataCopyWith<_$_BuilderData> get copyWith =>
      throw _privateConstructorUsedError;
}
