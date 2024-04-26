// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cashback_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CashbackInfoImpl _$$CashbackInfoImplFromJson(Map<String, dynamic> json) =>
    _$CashbackInfoImpl(
      client_id: json['client_id'] as int,
      balance: json['balance'] as String,
      client_wallet_id: json['client_wallet_id'] as int,
    );

Map<String, dynamic> _$$CashbackInfoImplToJson(_$CashbackInfoImpl instance) =>
    <String, dynamic>{
      'client_id': instance.client_id,
      'balance': instance.balance,
      'client_wallet_id': instance.client_wallet_id,
    };
