// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'airports_metro.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

City _$CityFromJson(Map<String, dynamic> json) => City(
      json['city_id'] as int,
      json['name'] as String,
    );

Map<String, dynamic> _$CityToJson(City instance) => <String, dynamic>{
      'city_id': instance.city_id,
      'name': instance.name,
    };

TransportPoint _$TransportPointFromJson(Map<String, dynamic> json) =>
    TransportPoint(
      json['airport_id'] as int?,
      json['metro_id'] as int?,
      json['railway_id'] as int?,
      json['name'] as String?,
      json['terminal'] as String?,
      json['input'] as String?,
      Coordinate.fromJson(json['cord'] as Map<String, dynamic>),
      json['address'] as String?,
    );

Map<String, dynamic> _$TransportPointToJson(TransportPoint instance) =>
    <String, dynamic>{
      'airport_id': instance.airport_id,
      'metro_id': instance.metro_id,
      'railway_id': instance.railway_id,
      'name': instance.name,
      'terminal': instance.terminal,
      'input': instance.input,
      'cord': instance.cord,
      'address': instance.address,
    };

TransportPoints _$TransportPointsFromJson(Map<String, dynamic> json) =>
    TransportPoints(
      (json['airports'] as List<dynamic>)
          .map((e) => TransportPoint.fromJson(e as Map<String, dynamic>))
          .toList(),
      (json['metros'] as List<dynamic>)
          .map((e) => TransportPoint.fromJson(e as Map<String, dynamic>))
          .toList(),
      (json['railways'] as List<dynamic>)
          .map((e) => TransportPoint.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$TransportPointsToJson(TransportPoints instance) =>
    <String, dynamic>{
      'airports': instance.airports,
      'metros': instance.metros,
      'railways': instance.railways,
    };
