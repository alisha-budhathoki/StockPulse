import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:stock_pulse/data/models/stock_response.dart';
import 'package:stock_pulse/data/services/stock_service.dart';
import 'package:stock_pulse/presentation/home/stock_bloc/stock_bloc.dart';
import 'package:stock_pulse/presentation/home/stock_bloc/stock_event.dart';
import 'package:stock_pulse/presentation/home/stock_bloc/stock_state.dart';
import 'package:stock_pulse/presentation/home/view_models/stock_view_model.dart';

import 'stock_bloc_test.mocks.dart';

@GenerateMocks([StockService])
void main() {
  late StockBloc stockBloc;
  late MockStockService mockStockService;

  setUp(() {
    mockStockService = MockStockService();
    stockBloc = StockBloc(stockService: mockStockService);
  });

  tearDown(() {
    stockBloc.close();
  });

  group('StockBloc', () {
    const mockStockResponse = StockResponse(
      response_code: '200',
      response_message: 'Success',
      data: StockResponseData(
        market_sumary: MarketSummary(
          today_nepse: '3000',
          change: 10.0,
          percent_change: 0.5,
        ),
        minute_data: [],
        hour_data: [],
        day_data: [],
        month_data: [],
        yearly_data: [],
      ),
    );

    test('initial state is StockInitial', () {
      expect(stockBloc.state, const StockInitial());
    });

    blocTest<StockBloc, StockState>(
      'emits [StockLoading, StockLoaded] when FetchStockData is added and data is fetched successfully',
      build: () {
        when(mockStockService.fetchStocks())
            .thenAnswer((_) async => mockStockResponse);
        return stockBloc;
      },
      act: (bloc) => bloc.add(const FetchStockData('hourly')),
      expect: () => [
        const StockLoading(),
        isA<StockLoaded>(),
      ],
    );

    blocTest<StockBloc, StockState>(
      'emits [StockLoading, StockError] when FetchStockData is added and data fetch fails',
      build: () {
        when(mockStockService.fetchStocks()).thenThrow(Exception('Error'));
        return stockBloc;
      },
      act: (bloc) => bloc.add(const FetchStockData('hourly')),
      expect: () => [
        const StockLoading(),
        isA<StockError>(),
      ],
    );

    blocTest<StockBloc, StockState>(
      'emits [StockLoading, StockLoaded] from cached data if available',
      build: () {
        stockBloc.cachedData = StockViewModel.fromResponse(mockStockResponse);
        return stockBloc;
      },
      act: (bloc) => bloc.add(const FetchStockData('hourly')),
      expect: () => [
        const StockLoading(),
        isA<StockLoaded>(),
      ],
      verify: (_) {
        verifyNever(mockStockService.fetchStocks());
      },
    );
  });
}
