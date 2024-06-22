import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:stock_pulse/data/services/stock_service.dart';
import 'package:stock_pulse/presentation/home/stock_bloc/stock_event.dart';
import 'package:stock_pulse/presentation/home/stock_bloc/stock_state.dart';
import 'package:stock_pulse/presentation/home/view_models/stock_view_model.dart';

class StockBloc extends Bloc<StockEvent, StockState> {
  StockBloc({required this.stockService}) : super(const StockInitial()) {
    on<FetchStockData>((event, emit) async {
      emit(const StockLoading());
      if (cachedData != null) {
        emit(StockLoaded(cachedData!));
        return;
      }
      try {
        final stockResponse = await stockService.fetchStocks();
        final stockViewModel = StockViewModel.fromResponse(stockResponse);
        cachedData = stockViewModel;
        emit(StockLoaded(stockViewModel));
      } catch (e) {
        emit(StockError(e.toString()));
      }
    });
  }

  final StockService stockService;
  StockViewModel? cachedData;
}
