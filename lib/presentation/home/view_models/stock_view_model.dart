import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:intl/intl.dart';
import 'package:stock_pulse/data/models/stock_response.dart';

part 'stock_view_model.freezed.dart';
part 'stock_view_model.g.dart';

@freezed
class StockViewModel with _$StockViewModel {
  const factory StockViewModel({
    required MarketSummaryViewModel marketSummary,
    required List<FormattedStockData> minuteData,
    required List<FormattedStockData> hourData,
    required List<FormattedStockData> dayData,
    required List<FormattedStockData> monthData,
    required List<FormattedStockData> yearlyData,
  }) = _StockViewModel;

  factory StockViewModel.fromJson(Map<String, dynamic> json) =>
      _$StockViewModelFromJson(json);

  factory StockViewModel.fromResponse(StockResponse response) {
    return StockViewModel(
      marketSummary:
          MarketSummaryViewModel.fromData(response.data.market_sumary),
      minuteData: response.data.minute_data
          .map((data) => FormattedStockData.fromData(data, isMinute: true))
          .toList(),
      hourData: response.data.hour_data
          .map((data) => FormattedStockData.fromData(data, isHour: true))
          .toList(),
      dayData: response.data.day_data.map(FormattedStockData.fromData).toList(),
      monthData:
          response.data.month_data.map(FormattedStockData.fromData).toList(),
      yearlyData:
          response.data.yearly_data.map(FormattedStockData.fromData).toList(),
    );
  }
}

@freezed
class FormattedStockData with _$FormattedStockData {
  const factory FormattedStockData({
    required DateTime date,
    required String formattedTime,
    required double index,
    required double change,
    required double percentChange,
  }) = _FormattedStockData;

  factory FormattedStockData.fromJson(Map<String, dynamic> json) =>
      _$FormattedStockDataFromJson(json);

  factory FormattedStockData.fromData(
    StockData data, {
    bool isMinute = false,
    bool isHour = false,
  }) {
    String formattedTime;
    if (isMinute) {
      formattedTime = DateFormat('HH:mm a').format(data.date);
    } else if (isHour) {
      formattedTime = DateFormat('HH:00 a').format(data.date);
    } else {
      formattedTime = DateFormat('MMM d, yyyy').format(data.date);
    }

    return FormattedStockData(
      date: data.date,
      formattedTime: formattedTime,
      index: data.index,
      change: data.change,
      percentChange: data.percent_change,
    );
  }
}

@freezed
class MarketSummaryViewModel with _$MarketSummaryViewModel {
  const factory MarketSummaryViewModel({
    required String todayNepse,
    required double change,
    required double percentChange,
  }) = _MarketSummaryViewModel;

  factory MarketSummaryViewModel.fromJson(Map<String, dynamic> json) =>
      _$MarketSummaryViewModelFromJson(json);

  factory MarketSummaryViewModel.fromData(MarketSummary data) {
    return MarketSummaryViewModel(
      todayNepse: data.today_nepse,
      change: data.change,
      percentChange: data.percent_change,
    );
  }
}
