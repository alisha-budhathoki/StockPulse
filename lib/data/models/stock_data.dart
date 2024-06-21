import 'package:freezed_annotation/freezed_annotation.dart';

part 'stock_data.freezed.dart';
part 'stock_data.g.dart';

@freezed
class StockData with _$StockData {
  const factory StockData({
    required DateTime time,
    required double price,
  }) = _StockData;

  factory StockData.fromJson(Map<String, dynamic> json) =>
      _$StockDataFromJson(json);
}

@freezed
class StockResponse with _$StockResponse {
  const factory StockResponse({
    required List<StockData> hourly,
    required List<StockData> daily,
    required List<StockData> monthly,
    required List<StockData> yearly,
  }) = _StockResponse;

  factory StockResponse.fromJson(Map<String, dynamic> json) =>
      _$StockResponseFromJson(json);
}
