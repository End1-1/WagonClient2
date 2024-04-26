// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cashback_info.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CashbackInfo _$CashbackInfoFromJson(Map<String, dynamic> json) {
  return _CashbackInfo.fromJson(json);
}

/// @nodoc
mixin _$CashbackInfo {
  int get client_id => throw _privateConstructorUsedError;
  String get balance => throw _privateConstructorUsedError;
  int get client_wallet_id => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CashbackInfoCopyWith<CashbackInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CashbackInfoCopyWith<$Res> {
  factory $CashbackInfoCopyWith(
          CashbackInfo value, $Res Function(CashbackInfo) then) =
      _$CashbackInfoCopyWithImpl<$Res, CashbackInfo>;
  @useResult
  $Res call({int client_id, String balance, int client_wallet_id});
}

/// @nodoc
class _$CashbackInfoCopyWithImpl<$Res, $Val extends CashbackInfo>
    implements $CashbackInfoCopyWith<$Res> {
  _$CashbackInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? client_id = null,
    Object? balance = null,
    Object? client_wallet_id = null,
  }) {
    return _then(_value.copyWith(
      client_id: null == client_id
          ? _value.client_id
          : client_id // ignore: cast_nullable_to_non_nullable
              as int,
      balance: null == balance
          ? _value.balance
          : balance // ignore: cast_nullable_to_non_nullable
              as String,
      client_wallet_id: null == client_wallet_id
          ? _value.client_wallet_id
          : client_wallet_id // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CashbackInfoImplCopyWith<$Res>
    implements $CashbackInfoCopyWith<$Res> {
  factory _$$CashbackInfoImplCopyWith(
          _$CashbackInfoImpl value, $Res Function(_$CashbackInfoImpl) then) =
      __$$CashbackInfoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int client_id, String balance, int client_wallet_id});
}

/// @nodoc
class __$$CashbackInfoImplCopyWithImpl<$Res>
    extends _$CashbackInfoCopyWithImpl<$Res, _$CashbackInfoImpl>
    implements _$$CashbackInfoImplCopyWith<$Res> {
  __$$CashbackInfoImplCopyWithImpl(
      _$CashbackInfoImpl _value, $Res Function(_$CashbackInfoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? client_id = null,
    Object? balance = null,
    Object? client_wallet_id = null,
  }) {
    return _then(_$CashbackInfoImpl(
      client_id: null == client_id
          ? _value.client_id
          : client_id // ignore: cast_nullable_to_non_nullable
              as int,
      balance: null == balance
          ? _value.balance
          : balance // ignore: cast_nullable_to_non_nullable
              as String,
      client_wallet_id: null == client_wallet_id
          ? _value.client_wallet_id
          : client_wallet_id // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CashbackInfoImpl implements _CashbackInfo {
  const _$CashbackInfoImpl(
      {required this.client_id,
      required this.balance,
      required this.client_wallet_id});

  factory _$CashbackInfoImpl.fromJson(Map<String, dynamic> json) =>
      _$$CashbackInfoImplFromJson(json);

  @override
  final int client_id;
  @override
  final String balance;
  @override
  final int client_wallet_id;

  @override
  String toString() {
    return 'CashbackInfo(client_id: $client_id, balance: $balance, client_wallet_id: $client_wallet_id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CashbackInfoImpl &&
            (identical(other.client_id, client_id) ||
                other.client_id == client_id) &&
            (identical(other.balance, balance) || other.balance == balance) &&
            (identical(other.client_wallet_id, client_wallet_id) ||
                other.client_wallet_id == client_wallet_id));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, client_id, balance, client_wallet_id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CashbackInfoImplCopyWith<_$CashbackInfoImpl> get copyWith =>
      __$$CashbackInfoImplCopyWithImpl<_$CashbackInfoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CashbackInfoImplToJson(
      this,
    );
  }
}

abstract class _CashbackInfo implements CashbackInfo {
  const factory _CashbackInfo(
      {required final int client_id,
      required final String balance,
      required final int client_wallet_id}) = _$CashbackInfoImpl;

  factory _CashbackInfo.fromJson(Map<String, dynamic> json) =
      _$CashbackInfoImpl.fromJson;

  @override
  int get client_id;
  @override
  String get balance;
  @override
  int get client_wallet_id;
  @override
  @JsonKey(ignore: true)
  _$$CashbackInfoImplCopyWith<_$CashbackInfoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
