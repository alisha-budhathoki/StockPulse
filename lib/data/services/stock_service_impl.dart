import 'package:stock_pulse/data/models/stock_response.dart';
import 'package:stock_pulse/data/services/stock_service.dart';
import 'package:stock_pulse/data/sources/remote_source.dart';

class StockServiceImpl implements StockService {
  StockServiceImpl({required this.remoteSource});

  final RemoteSource remoteSource;

  String baseUrl =
      'https://run.mocky.io/v3/366e2a71-3413-49e7-91d2-f7e2dd927df8';

  @override
  Future<StockResponse> fetchStocks() async {
    try {
      final response = await remoteSource.get(baseUrl);
      return StockResponse.fromJson(response);
    } catch (e) {
      rethrow;
    }
  }
}
