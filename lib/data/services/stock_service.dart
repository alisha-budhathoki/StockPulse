import 'package:stock_pulse/data/models/stock_response.dart';

abstract class StockService {
  Future<StockResponse> fetchStocks();
}
