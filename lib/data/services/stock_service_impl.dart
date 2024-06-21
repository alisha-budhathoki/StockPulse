import 'package:stock_pulse/data/models/stock_data.dart';
import 'package:stock_pulse/data/services/stock_service.dart';
import 'package:stock_pulse/data/sources/remote_source.dart';

class StockServiceImpl implements StockService {
  StockServiceImpl({required this.remoteSource});

  final RemoteSource remoteSource;

  @override
  Future<StockResponse> fetchStocks(String interval) async {
    try {
      final response = await remoteSource
          .get('https://run.mocky.io/v3/635a5517-f09e-4f79-b026-2d5c2fb0c09e');
      return StockResponse.fromJson(response);
    } catch (e) {
      rethrow;
    }
  }
}
