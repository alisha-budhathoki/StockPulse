import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:stock_pulse/data/models/stock_response.dart';
import 'package:stock_pulse/presentation/home/view_models/stock_view_model.dart';

part 'stock_state.freezed.dart';

@freezed
class StockState with _$StockState {
  const factory StockState.initial() = StockInitial;
  const factory StockState.loading() = StockLoading;
  const factory StockState.loaded(StockViewModel stocks) = StockLoaded;
  const factory StockState.error(String message) = StockError;
}
