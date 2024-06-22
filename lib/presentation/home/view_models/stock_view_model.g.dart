// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stock_view_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$StockViewModelImpl _$$StockViewModelImplFromJson(Map<String, dynamic> json) =>
    _$StockViewModelImpl(
      marketSummary: MarketSummaryViewModel.fromJson(
          json['marketSummary'] as Map<String, dynamic>),
      minuteData: (json['minuteData'] as List<dynamic>)
          .map((e) => FormattedStockData.fromJson(e as Map<String, dynamic>))
          .toList(),
      hourData: (json['hourData'] as List<dynamic>)
          .map((e) => FormattedStockData.fromJson(e as Map<String, dynamic>))
          .toList(),
      dayData: (json['dayData'] as List<dynamic>)
          .map((e) => FormattedStockData.fromJson(e as Map<String, dynamic>))
          .toList(),
      monthData: (json['monthData'] as List<dynamic>)
          .map((e) => FormattedStockData.fromJson(e as Map<String, dynamic>))
          .toList(),
      yearlyData: (json['yearlyData'] as List<dynamic>)
          .map((e) => FormattedStockData.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$StockViewModelImplToJson(
        _$StockViewModelImpl instance) =>
    <String, dynamic>{
      'marketSummary': instance.marketSummary,
      'minuteData': instance.minuteData,
      'hourData': instance.hourData,
      'dayData': instance.dayData,
      'monthData': instance.monthData,
      'yearlyData': instance.yearlyData,
    };

_$FormattedStockDataImpl _$$FormattedStockDataImplFromJson(
        Map<String, dynamic> json) =>
    _$FormattedStockDataImpl(
      date: DateTime.parse(json['date'] as String),
      formattedTime: json['formattedTime'] as String,
      index: (json['index'] as num).toDouble(),
      change: (json['change'] as num).toDouble(),
      percent_change: (json['percent_change'] as num).toDouble(),
    );

Map<String, dynamic> _$$FormattedStockDataImplToJson(
        _$FormattedStockDataImpl instance) =>
    <String, dynamic>{
      'date': instance.date.toIso8601String(),
      'formattedTime': instance.formattedTime,
      'index': instance.index,
      'change': instance.change,
      'percent_change': instance.percent_change,
    };

_$MarketSummaryViewModelImpl _$$MarketSummaryViewModelImplFromJson(
        Map<String, dynamic> json) =>
    _$MarketSummaryViewModelImpl(
      todayNepse: json['todayNepse'] as String,
      change: (json['change'] as num).toDouble(),
      percentChange: (json['percentChange'] as num).toDouble(),
    );

Map<String, dynamic> _$$MarketSummaryViewModelImplToJson(
        _$MarketSummaryViewModelImpl instance) =>
    <String, dynamic>{
      'todayNepse': instance.todayNepse,
      'change': instance.change,
      'percentChange': instance.percentChange,
    };
