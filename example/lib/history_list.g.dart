// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'history_list.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

History _$HistoryFromJson(Map<String, dynamic> json) => History(
      json['order_id'] as int,
      json['ordered_from'] as String? ?? '',
      json['ordered_to'] as String? ?? '',
      (json['cost'] as num).toDouble(),
      json['started'] as String,
    );

Map<String, dynamic> _$HistoryToJson(History instance) => <String, dynamic>{
      'order_id': instance.order_id,
      'ordered_from': instance.ordered_from,
      'ordered_to': instance.ordered_to,
      'cost': instance.cost,
      'started': instance.started,
    };

HistoryList _$HistoryListFromJson(Map<String, dynamic> json) => HistoryList(
      (json['list'] as List<dynamic>)
          .map((e) => History.fromJson(e as Map<String, dynamic>))
          .toList(),
    )..mode = json['mode'] as int? ?? 0;

Map<String, dynamic> _$HistoryListToJson(HistoryList instance) =>
    <String, dynamic>{
      'list': instance.list,
      'mode': instance.mode,
    };
