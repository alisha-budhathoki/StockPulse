import 'package:stock_pulse/data/models/stock_response.dart';
import 'package:stock_pulse/data/services/stock_service.dart';
import 'package:stock_pulse/data/sources/remote_source.dart';

class StockServiceImpl implements StockService {
  StockServiceImpl({required this.remoteSource});

  final RemoteSource remoteSource;
  final data = {
    'response_code': '200',
    'response_message': 'Successfully Fetch Nepse Data',
    'data': {
      'market_sumary': {
        'today_nepse': '2900',
        'change': 10.44,
        'percent_change': -0.5,
      },
      'minute_data': [
        {
          'date': '2024-06-21T11:00:00Z',
          'index': 2900.00,
          'change': 0.00,
          'percent_change': 0.0000,
        },
        {
          'date': '2024-06-21T11:01:00Z',
          'index': 2900.10,
          'change': 0.10,
          'percent_change': 0.0034,
        },
        {
          'date': '2024-06-21T11:02:00Z',
          'index': 2900.20,
          'change': 0.10,
          'percent_change': 0.0034,
        },
        {
          'date': '2024-06-21T11:03:00Z',
          'index': 2900.30,
          'change': 0.10,
          'percent_change': 0.0034,
        }
      ],
      'hour_data': [
        {
          'date': '2024-06-21T10:00:00Z',
          'index': 2910.00,
          'change': 15.00,
          'percent_change': 0.52,
        },
        {
          'date': '2024-06-21T11:00:00Z',
          'index': 2915.00,
          'change': 15.00,
          'percent_change': 0.52,
        },
        {
          'date': '2024-06-21T12:00:00Z',
          'index': 2920.00,
          'change': 5.00,
          'percent_change': 0.17,
        },
        {
          'date': '2024-06-21T13:00:00Z',
          'index': 2925.00,
          'change': 5.00,
          'percent_change': 0.17,
        },
        {
          'date': '2024-06-21T14:00:00Z',
          'index': 2930.00,
          'change': 5.00,
          'percent_change': 0.17,
        }
      ],
      'day_data': [
        {
          'date': '2024-06-01T00:00:00Z',
          'index': 2900.45,
          'change': 0.00,
          'percent_change': 0.00,
        },
        {
          'date': '2024-06-02T00:00:00Z',
          'index': 2905.45,
          'change': 5.00,
          'percent_change': 0.17,
        },
        {
          'date': '2024-06-03T00:00:00Z',
          'index': 2910.45,
          'change': 5.00,
          'percent_change': 0.17,
        },
        {
          'date': '2024-06-04T00:00:00Z',
          'index': 2915.45,
          'change': 5.00,
          'percent_change': 0.17,
        }
      ],
      'month_data': [
        {
          'date': '2024-01-01T10:00:00Z',
          'index': 2500.00,
          'change': 0.00,
          'percent_change': 0.00,
        },
        {
          'date': '2024-02-01T10:00:00Z',
          'index': 2550.00,
          'change': 50.00,
          'percent_change': 2.00,
        },
        {
          'date': '2024-03-01T10:00:00Z',
          'index': 2600.00,
          'change': 50.00,
          'percent_change': 1.96,
        },
        {
          'date': '2024-04-01T10:00:00Z',
          'index': 2650.00,
          'change': 50.00,
          'percent_change': 1.92,
        }
      ],
      'yearly_data': [
        {
          'date': '2020-01-01T00:00:00Z',
          'index': 2000.00,
          'change': 100.00,
          'percent_change': 5.00,
        },
        {
          'date': '2021-01-01T00:00:00Z',
          'index': 2200.00,
          'change': 200.00,
          'percent_change': 10.00,
        },
        {
          'date': '2022-01-01T00:00:00Z',
          'index': 2500.00,
          'change': 300.00,
          'percent_change': 13.64,
        },
        {
          'date': '2023-01-01T00:00:00Z',
          'index': 2900.00,
          'change': 400.00,
          'percent_change': 16.00,
        }
      ],
    },
  };

  String baseUrl =
      'https://run.mocky.io/v3/94c26c8e-2cb1-4a10-be1c-eb03d84708ce';

  @override
  Future<StockResponse> fetchStocks() async {
    try {
      // final response = await remoteSource.get(baseUrl);
      return StockResponse.fromJson(data);
    } catch (e) {
      rethrow;
    }
  }
}
