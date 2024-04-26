// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'address_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AddressStruct {
  String get address => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  Point? get point => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AddressStructCopyWith<AddressStruct> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddressStructCopyWith<$Res> {
  factory $AddressStructCopyWith(
          AddressStruct value, $Res Function(AddressStruct) then) =
      _$AddressStructCopyWithImpl<$Res, AddressStruct>;
  @useResult
  $Res call({String address, String title, Point? point});
}

/// @nodoc
class _$AddressStructCopyWithImpl<$Res, $Val extends AddressStruct>
    implements $AddressStructCopyWith<$Res> {
  _$AddressStructCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? address = null,
    Object? title = null,
    Object? point = freezed,
  }) {
    return _then(_value.copyWith(
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      point: freezed == point
          ? _value.point
          : point // ignore: cast_nullable_to_non_nullable
              as Point?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AddressStructImplCopyWith<$Res>
    implements $AddressStructCopyWith<$Res> {
  factory _$$AddressStructImplCopyWith(
          _$AddressStructImpl value, $Res Function(_$AddressStructImpl) then) =
      __$$AddressStructImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String address, String title, Point? point});
}

/// @nodoc
class __$$AddressStructImplCopyWithImpl<$Res>
    extends _$AddressStructCopyWithImpl<$Res, _$AddressStructImpl>
    implements _$$AddressStructImplCopyWith<$Res> {
  __$$AddressStructImplCopyWithImpl(
      _$AddressStructImpl _value, $Res Function(_$AddressStructImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? address = null,
    Object? title = null,
    Object? point = freezed,
  }) {
    return _then(_$AddressStructImpl(
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      point: freezed == point
          ? _value.point
          : point // ignore: cast_nullable_to_non_nullable
              as Point?,
    ));
  }
}

/// @nodoc

class _$AddressStructImpl implements _AddressStruct {
  const _$AddressStructImpl(
      {required this.address, required this.title, required this.point});

  @override
  final String address;
  @override
  final String title;
  @override
  final Point? point;

  @override
  String toString() {
    return 'AddressStruct(address: $address, title: $title, point: $point)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddressStructImpl &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.point, point) || other.point == point));
  }

  @override
  int get hashCode => Object.hash(runtimeType, address, title, point);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddressStructImplCopyWith<_$AddressStructImpl> get copyWith =>
      __$$AddressStructImplCopyWithImpl<_$AddressStructImpl>(this, _$identity);
}

abstract class _AddressStruct implements AddressStruct {
  const factory _AddressStruct(
      {required final String address,
      required final String title,
      required final Point? point}) = _$AddressStructImpl;

  @override
  String get address;
  @override
  String get title;
  @override
  Point? get point;
  @override
  @JsonKey(ignore: true)
  _$$AddressStructImplCopyWith<_$AddressStructImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
