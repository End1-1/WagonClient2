// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'history_preorder.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Coord _$CoordFromJson(Map<String, dynamic> json) => Coord(
      (json['lat'] as num?)?.toDouble(),
      (json['lut'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$CoordToJson(Coord instance) => <String, dynamic>{
      'lat': instance.lat,
      'lut': instance.lut,
    };

Addresses _$AddressesFromJson(Map<String, dynamic> json) => Addresses(
      json['from'] as String?,
      json['from_cord'] == null
          ? null
          : Coord.fromJson(json['from_cord'] as Map<String, dynamic>),
      json['to'] as String?,
      json['to_cord'] == null
          ? null
          : Coord.fromJson(json['to_cord'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$AddressesToJson(Addresses instance) => <String, dynamic>{
      'from': instance.from,
      'from_cord': instance.from_cord,
      'to': instance.to,
      'to_cord': instance.to_cord,
    };

PreorderTime _$PreorderTimeFromJson(Map<String, dynamic> json) => PreorderTime(
      json['create'] as String?,
      json['start'] as String?,
    );

Map<String, dynamic> _$PreorderTimeToJson(PreorderTime instance) =>
    <String, dynamic>{
      'create': instance.create,
      'start': instance.start,
    };

Preorder _$PreorderFromJson(Map<String, dynamic> json) => Preorder(
      json['order_id'] as int?,
      json['accepted'] as bool?,
      json['addresses'] == null
          ? null
          : Addresses.fromJson(json['addresses'] as Map<String, dynamic>),
      json['time'] == null
          ? null
          : PreorderTime.fromJson(json['time'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$PreorderToJson(Preorder instance) => <String, dynamic>{
      'order_id': instance.order_id,
      'accepted': instance.accepted,
      'addresses': instance.addresses,
      'time': instance.time,
    };

PreordersList _$PreordersListFromJson(Map<String, dynamic> json) =>
    PreordersList(
      (json['list'] as List<dynamic>)
          .map((e) => Preorder.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$PreordersListToJson(PreordersList instance) =>
    <String, dynamic>{
      'list': instance.list,
    };
