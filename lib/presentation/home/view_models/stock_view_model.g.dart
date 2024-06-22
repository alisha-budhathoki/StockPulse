// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stock_view_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$StockViewModelImpl _$$StockViewModelImplFromJson(Map<String, dynamic> json) =>
    _$StockViewModelImpl(
      hourly: (json['hourly'] as List<dynamic>)
          .map((e) => FormattedStockData.fromJson(e as Map<String, dynamic>))
          .toList(),
      daily: (json['daily'] as List<dynamic>)
          .map((e) => FormattedStockData.fromJson(e as Map<String, dynamic>))
          .toList(),
      monthly: (json['monthly'] as List<dynamic>)
          .map((e) => FormattedStockData.fromJson(e as Map<String, dynamic>))
          .toList(),
      yearly: (json['yearly'] as List<dynamic>)
          .map((e) => FormattedStockData.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$StockViewModelImplToJson(
        _$StockViewModelImpl instance) =>
    <String, dynamic>{
      'hourly': instance.hourly,
      'daily': instance.daily,
      'monthly': instance.monthly,
      'yearly': instance.yearly,
    };

_$FormattedStockDataImpl _$$FormattedStockDataImplFromJson(
        Map<String, dynamic> json) =>
    _$FormattedStockDataImpl(
      time: DateTime.parse(json['time'] as String),
      formattedTime: json['formattedTime'] as String,
      price: (json['price'] as num).toDouble(),
    );

Map<String, dynamic> _$$FormattedStockDataImplToJson(
        _$FormattedStockDataImpl instance) =>
    <String, dynamic>{
      'time': instance.time.toIso8601String(),
      'formattedTime': instance.formattedTime,
      'price': instance.price,
    };
