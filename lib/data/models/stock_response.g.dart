// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stock_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$StockDataImpl _$$StockDataImplFromJson(Map<String, dynamic> json) =>
    _$StockDataImpl(
      time: DateTime.parse(json['time'] as String),
      price: (json['price'] as num).toDouble(),
    );

Map<String, dynamic> _$$StockDataImplToJson(_$StockDataImpl instance) =>
    <String, dynamic>{
      'time': instance.time.toIso8601String(),
      'price': instance.price,
    };

_$StockResponseImpl _$$StockResponseImplFromJson(Map<String, dynamic> json) =>
    _$StockResponseImpl(
      hourly: (json['hourly'] as List<dynamic>)
          .map((e) => StockData.fromJson(e as Map<String, dynamic>))
          .toList(),
      daily: (json['daily'] as List<dynamic>)
          .map((e) => StockData.fromJson(e as Map<String, dynamic>))
          .toList(),
      monthly: (json['monthly'] as List<dynamic>)
          .map((e) => StockData.fromJson(e as Map<String, dynamic>))
          .toList(),
      yearly: (json['yearly'] as List<dynamic>)
          .map((e) => StockData.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$StockResponseImplToJson(_$StockResponseImpl instance) =>
    <String, dynamic>{
      'hourly': instance.hourly,
      'daily': instance.daily,
      'monthly': instance.monthly,
      'yearly': instance.yearly,
    };
