import 'package:freezed_annotation/freezed_annotation.dart';

part 'stock_event.freezed.dart';

@freezed
class StockEvent with _$StockEvent {
  const factory StockEvent.fetchStockData(String interval) = FetchStockData;
}
