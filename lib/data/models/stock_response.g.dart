// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stock_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$StockDataImpl _$$StockDataImplFromJson(Map<String, dynamic> json) =>
    _$StockDataImpl(
      date: DateTime.parse(json['date'] as String),
      index: (json['index'] as num).toDouble(),
      change: (json['change'] as num).toDouble(),
      percent_change: (json['percent_change'] as num).toDouble(),
    );

Map<String, dynamic> _$$StockDataImplToJson(_$StockDataImpl instance) =>
    <String, dynamic>{
      'date': instance.date.toIso8601String(),
      'index': instance.index,
      'change': instance.change,
      'percent_change': instance.percent_change,
    };

_$MarketSummaryImpl _$$MarketSummaryImplFromJson(Map<String, dynamic> json) =>
    _$MarketSummaryImpl(
      today_nepse: json['today_nepse'] as String,
      change: (json['change'] as num).toDouble(),
      percent_change: (json['percent_change'] as num).toDouble(),
    );

Map<String, dynamic> _$$MarketSummaryImplToJson(_$MarketSummaryImpl instance) =>
    <String, dynamic>{
      'today_nepse': instance.today_nepse,
      'change': instance.change,
      'percent_change': instance.percent_change,
    };

_$StockResponseDataImpl _$$StockResponseDataImplFromJson(
        Map<String, dynamic> json) =>
    _$StockResponseDataImpl(
      market_sumary:
          MarketSummary.fromJson(json['market_sumary'] as Map<String, dynamic>),
      minute_data: (json['minute_data'] as List<dynamic>)
          .map((e) => StockData.fromJson(e as Map<String, dynamic>))
          .toList(),
      hour_data: (json['hour_data'] as List<dynamic>)
          .map((e) => StockData.fromJson(e as Map<String, dynamic>))
          .toList(),
      day_data: (json['day_data'] as List<dynamic>)
          .map((e) => StockData.fromJson(e as Map<String, dynamic>))
          .toList(),
      month_data: (json['month_data'] as List<dynamic>)
          .map((e) => StockData.fromJson(e as Map<String, dynamic>))
          .toList(),
      yearly_data: (json['yearly_data'] as List<dynamic>)
          .map((e) => StockData.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$StockResponseDataImplToJson(
        _$StockResponseDataImpl instance) =>
    <String, dynamic>{
      'market_sumary': instance.market_sumary,
      'minute_data': instance.minute_data,
      'hour_data': instance.hour_data,
      'day_data': instance.day_data,
      'month_data': instance.month_data,
      'yearly_data': instance.yearly_data,
    };

_$StockResponseImpl _$$StockResponseImplFromJson(Map<String, dynamic> json) =>
    _$StockResponseImpl(
      response_code: json['response_code'] as String,
      response_message: json['response_message'] as String,
      data: StockResponseData.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$StockResponseImplToJson(_$StockResponseImpl instance) =>
    <String, dynamic>{
      'response_code': instance.response_code,
      'response_message': instance.response_message,
      'data': instance.data,
    };
