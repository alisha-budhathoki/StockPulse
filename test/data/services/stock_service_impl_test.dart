// test/stock_service_impl_test.dart

import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:stock_pulse/data/models/stock_data.dart';
import 'package:stock_pulse/data/services/stock_service_impl.dart';
import 'mock_remote_source.mocks.dart';

void main() {
  late StockServiceImpl stockService;
  late MockRemoteSource mockRemoteSource;

  setUp(() {
    mockRemoteSource = MockRemoteSource();
    stockService = StockServiceImpl(remoteSource: mockRemoteSource);
  });

  group('StockServiceImpl', () {
    test('fetchStocks returns StockResponse if the response is successful',
        () async {
      final responseData = {
        'hourly': [
          {'time': '2023-06-21T10:00:00Z', 'price': 150.0},
          {'time': '2023-06-21T11:00:00Z', 'price': 152.5},
          {'time': '2023-06-21T12:00:00Z', 'price': 149.8},
        ],
        'daily': [
          {'time': '2023-06-20T00:00:00Z', 'price': 148.0},
          {'time': '2023-06-21T00:00:00Z', 'price': 150.0},
        ],
        'monthly': [
          {'time': '2024-05-21T00:00:00Z', 'price': 1920.00},
          {'time': '2024-06-21T00:00:00Z', 'price': 1966.23},
        ],
        'yearly': [
          {'time': '2023-06-21T00:00:00Z', 'price': 1800.00},
          {'time': '2024-06-21T00:00:00Z', 'price': 1966.23},
        ]
      };
      when(mockRemoteSource.get(any)).thenAnswer((_) async => responseData);

      final result = await stockService.fetchStocks('hourly');

      expect(result, isA<StockResponse>());
      expect(result.hourly.first.price, 150.0);
      verify(mockRemoteSource.get(any)).called(1);
    });

    test('fetchStocks throws Exception on error', () async {
      when(mockRemoteSource.get(any)).thenThrow(Exception('Error'));

      expect(stockService.fetchStocks('hourly'), throwsException);
      verify(mockRemoteSource.get(any)).called(1);
    });
  });
}
