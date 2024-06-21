import 'package:stock_pulse/data/models/stock_data.dart';

abstract class StockService {
  Future<StockResponse> fetchStocks(String interval);
}
