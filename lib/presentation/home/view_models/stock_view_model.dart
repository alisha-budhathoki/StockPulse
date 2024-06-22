import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:intl/intl.dart';
import 'package:stock_pulse/data/models/stock_response.dart';

part 'stock_view_model.freezed.dart';
part 'stock_view_model.g.dart';

@freezed
class StockViewModel with _$StockViewModel {
  const factory StockViewModel({
    required List<FormattedStockData> hourly,
    required List<FormattedStockData> daily,
    required List<FormattedStockData> monthly,
    required List<FormattedStockData> yearly,
  }) = _StockViewModel;

  factory StockViewModel.fromJson(Map<String, dynamic> json) =>
      _$StockViewModelFromJson(json);

  factory StockViewModel.fromResponse(StockResponse response) {
    return StockViewModel(
      hourly: response.hourly.map(FormattedStockData.fromData).toList(),
      daily: response.daily.map(FormattedStockData.fromData).toList(),
      monthly: response.monthly.map(FormattedStockData.fromData).toList(),
      yearly: response.yearly.map(FormattedStockData.fromData).toList(),
    );
  }
}

@freezed
class FormattedStockData with _$FormattedStockData {
  const factory FormattedStockData({
    required DateTime time,
    required String formattedTime,
    required double price,
  }) = _FormattedStockData;

  factory FormattedStockData.fromJson(Map<String, dynamic> json) =>
      _$FormattedStockDataFromJson(json);

  factory FormattedStockData.fromData(StockData data) {
    return FormattedStockData(
      time: data.time,
      formattedTime: DateFormat('MMMM d, yyyy').format(data.time),
      price: data.price,
    );
  }
}
