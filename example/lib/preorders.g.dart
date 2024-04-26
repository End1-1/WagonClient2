// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'preorders.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

OrderDate _$OrderDateFromJson(Map<String, dynamic> json) => OrderDate(
      json['start'] as String,
      json['create'] as String,
    );

Map<String, dynamic> _$OrderDateToJson(OrderDate instance) => <String, dynamic>{
      'create': instance.create,
      'start': instance.start,
    };

Coordinate _$CoordinateFromJson(Map<String, dynamic> json) => Coordinate(
      (json['lat'] as num?)?.toDouble() ?? 0.0,
      (json['lon'] as num?)?.toDouble() ?? 0.0,
    );

Map<String, dynamic> _$CoordinateToJson(Coordinate instance) =>
    <String, dynamic>{
      'lat': instance.lat,
      'lon': instance.lon,
    };

Address _$AddressFromJson(Map<String, dynamic> json) => Address(
      json['from'] as String,
      json['to'] as String,
      Coordinate.fromJson(json['from_cord'] as Map<String, dynamic>),
      Coordinate.fromJson(json['to_cord'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$AddressToJson(Address instance) => <String, dynamic>{
      'from': instance.from,
      'to': instance.to,
      'from_cord': instance.from_cord,
      'to_cord': instance.to_cord,
    };

Preorder _$PreorderFromJson(Map<String, dynamic> json) => Preorder(
      json['order_id'] as int,
      json['accepted'] as int,
      json['car_class'] as String? ?? '',
      (json['price'] as num).toDouble(),
      Address.fromJson(json['addresses'] as Map<String, dynamic>),
      OrderDate.fromJson(json['time'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$PreorderToJson(Preorder instance) => <String, dynamic>{
      'order_id': instance.order_id,
      'accepted': instance.accepted,
      'car_class': instance.car_class,
      'price': instance.price,
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
