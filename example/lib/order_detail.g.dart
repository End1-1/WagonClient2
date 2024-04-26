// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_detail.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

OrderCar _$OrderCarFromJson(Map<String, dynamic> json) => OrderCar(
      json['mark'] as String,
      json['model'] as String,
      json['color'] as String,
      json['state_license'] as String,
    )..car_class = json['car_class'] as String?;

Map<String, dynamic> _$OrderCarToJson(OrderCar instance) => <String, dynamic>{
      'mark': instance.mark,
      'model': instance.model,
      'color': instance.color,
      'car_class': instance.car_class,
      'state_license': instance.state_license,
    };

OrderDriver _$OrderDriverFromJson(Map<String, dynamic> json) => OrderDriver(
      json['name'] as String,
      json['surname'] as String,
      json['phone'] as String,
    );

Map<String, dynamic> _$OrderDriverToJson(OrderDriver instance) =>
    <String, dynamic>{
      'name': instance.name,
      'surname': instance.surname,
      'phone': instance.phone,
    };

TPoint _$TPointFromJson(Map<String, dynamic> json) => TPoint(
      (json['lat'] as num).toDouble(),
      (json['lut'] as num).toDouble(),
    );

Map<String, dynamic> _$TPointToJson(TPoint instance) => <String, dynamic>{
      'lat': instance.lat,
      'lut': instance.lut,
    };

OrderDateTime _$OrderDateTimeFromJson(Map<String, dynamic> json) =>
    OrderDateTime(
      json['start_date'] as String,
      json['end_date'] as String,
      json['start_time'] as String,
      json['end_time'] as String,
    );

Map<String, dynamic> _$OrderDateTimeToJson(OrderDateTime instance) =>
    <String, dynamic>{
      'start_time': instance.start_time,
      'end_time': instance.end_time,
      'start_date': instance.start_date,
      'end_date': instance.end_date,
    };

OrderDetail _$OrderDetailFromJson(Map<String, dynamic> json) => OrderDetail(
      json['order_id'] as int,
      json['from'] as String,
      json['to'] as String,
      (json['price'] as num).toDouble(),
      json['payment_type'] as String,
      OrderDateTime.fromJson(json['datetime'] as Map<String, dynamic>),
      (json['trajectory'] as List<dynamic>)
          .map((e) => TPoint.fromJson(e as Map<String, dynamic>))
          .toList(),
      OrderDriver.fromJson(json['driver'] as Map<String, dynamic>),
      OrderCar.fromJson(json['car'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$OrderDetailToJson(OrderDetail instance) =>
    <String, dynamic>{
      'order_id': instance.order_id,
      'from': instance.from,
      'to': instance.to,
      'price': instance.price,
      'payment_type': instance.payment_type,
      'datetime': instance.datetime,
      'trajectory': instance.trajectory,
      'driver': instance.driver,
      'car': instance.car,
    };
