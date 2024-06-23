import 'package:freezed_annotation/freezed_annotation.dart';

part 'stock_response.freezed.dart';
part 'stock_response.g.dart';

@freezed
class StockData with _$StockData {
  const factory StockData({
    required DateTime date,
    required double index,
    required double change,
    required double percent_change,
  }) = _StockData;

  factory StockData.fromJson(Map<String, dynamic> json) =>
      _$StockDataFromJson(json);
}

@freezed
class MarketSummary with _$MarketSummary {
  const factory MarketSummary({
    required String today_nepse,
    required double change,
    required double percent_change,
  }) = _MarketSummary;

  factory MarketSummary.fromJson(Map<String, dynamic> json) =>
      _$MarketSummaryFromJson(json);
}

@freezed
class StockResponseData with _$StockResponseData {
  const factory StockResponseData({
    required MarketSummary market_sumary,
    required List<StockData> minute_data,
    required List<StockData> hour_data,
    required List<StockData> day_data,
    required List<StockData> month_data,
    required List<StockData> yearly_data,
  }) = _StockResponseData;

  factory StockResponseData.fromJson(Map<String, dynamic> json) =>
      _$StockResponseDataFromJson(json);
}

@freezed
class StockResponse with _$StockResponse {
  const factory StockResponse({
    required String response_code,
    required String response_message,
    required StockResponseData data,
  }) = _StockResponse;

  factory StockResponse.fromJson(Map<String, dynamic> json) =>
      _$StockResponseFromJson(json);
}
