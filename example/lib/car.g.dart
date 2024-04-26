// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'car.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CarCoordinate _$CarCoordinateFromJson(Map<String, dynamic> json) =>
    CarCoordinate(
      (json['lat'] as num).toDouble(),
      (json['lut'] as num).toDouble(),
    );

Map<String, dynamic> _$CarCoordinateToJson(CarCoordinate instance) =>
    <String, dynamic>{
      'lat': instance.lat,
      'lut': instance.lut,
    };

CarPos _$CarPosFromJson(Map<String, dynamic> json) => CarPos(
      json['driver_id'] as int,
      json['current_franchise_id'] as int,
      CarCoordinate.fromJson(
          json['current_coordinate'] as Map<String, dynamic>),
      json['azimuth'] as int,
      json['phone'] as String,
      json['name'] as String,
      json['surname'] as String,
      json['photo'] as String,
    );

Map<String, dynamic> _$CarPosToJson(CarPos instance) => <String, dynamic>{
      'driver_id': instance.driver_id,
      'current_franchise_id': instance.current_franchise_id,
      'current_coordinate': instance.current_coordinate,
      'azimuth': instance.azimuth,
      'phone': instance.phone,
      'name': instance.name,
      'surname': instance.surname,
      'photo': instance.photo,
    };

ListenRadiusTaxiEvent _$ListenRadiusTaxiEventFromJson(
        Map<String, dynamic> json) =>
    ListenRadiusTaxiEvent(
      json['status'] as String,
      (json['taxis'] as List<dynamic>)
          .map((e) => CarPos.fromJson(e as Map<String, dynamic>))
          .toList(),
    )..a = json['a'] as String?;

Map<String, dynamic> _$ListenRadiusTaxiEventToJson(
        ListenRadiusTaxiEvent instance) =>
    <String, dynamic>{
      'status': instance.status,
      'taxis': instance.taxis,
      'a': instance.a,
    };
