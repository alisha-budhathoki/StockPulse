import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:stock_pulse/data/services/stock_service_impl.dart';
import 'mock_remote_source.mocks.dart';
import 'package:stock_pulse/data/models/stock_response.dart';

void main() {
  group('StockServiceImpl', () {
    late MockRemoteSource mockRemoteSource;
    late StockServiceImpl stockServiceImpl;

    setUp(() {
      mockRemoteSource = MockRemoteSource();
      stockServiceImpl = StockServiceImpl(remoteSource: mockRemoteSource);
    });

    test('fetchStocks returns StockResponse on successful data fetch',
        () async {
      final mockJsonResponse = {
        'response_code': '200',
        'response_message': 'Successfully Fetch Nepse Data',
        'data': {
          'market_sumary': {
            'today_nepse': '2900',
            'change': 10.44,
            'percent_change': -0.5
          },
          'minute_data': [
            {
              'date': '2024-06-21T11:00:00Z',
              'index': 2900.00,
              'change': 0.00,
              'percent_change': 0.0000
            },
            // Additional data here
          ],
          'hour_data': [
            {
              'date': '2024-06-21T11:00:00Z',
              'index': 2915.00,
              'change': 15.00,
              'percent_change': 0.52
            },
            // Additional data here
          ],
          'day_data': [
            {
              'date': '2024-06-01T00:00:00Z',
              'index': 2900.45,
              'change': 0.00,
              'percent_change': 0.00
            },
            // Additional data here
          ],
          'month_data': [
            {
              'date': '2024-01-01T10:00:00Z',
              'index': 2500.00,
              'change': 0.00,
              'percent_change': 0.00
            },
            // Additional data here
          ],
          'yearly_data': [
            {
              'date': '2010-01-01T00:00:00Z',
              'index': 2900.45,
              'change': 0.05,
              'percent_change': 0.0017
            },
            // Additional data here
          ]
        }
      };

      when(mockRemoteSource.get(any)).thenAnswer((_) async => mockJsonResponse);

      final result = await stockServiceImpl.fetchStocks();

      expect(result, isA<StockResponse>());
      expect(result.response_code, '200');
      expect(result.response_message, 'Successfully Fetch Nepse Data');
      expect(result.data.minute_data.first.index, 2900.00);
    });

    test('fetchStocks throws an error on failed data fetch', () async {
      when(mockRemoteSource.get(any))
          .thenThrow(Exception('Failed to fetch data'));

      expect(() => stockServiceImpl.fetchStocks(), throwsA(isA<Exception>()));
    });
  });
}
