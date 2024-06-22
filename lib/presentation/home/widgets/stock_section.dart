import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:stock_pulse/presentation/home/stock_bloc/stock_bloc.dart';
import 'package:stock_pulse/presentation/home/stock_bloc/stock_event.dart';
import 'package:stock_pulse/presentation/home/stock_bloc/stock_state.dart';
import 'package:stock_pulse/presentation/home/view_models/stock_view_model.dart';
import 'package:stock_pulse/presentation/home/widgets/interval_selector.dart';
import 'package:stock_pulse/presentation/home/widgets/widgets.dart';

class StockSection extends StatefulWidget {
  const StockSection({super.key});

  @override
  StockSectionState createState() => StockSectionState();
}

class StockSectionState extends State<StockSection> {
  String selectedInterval = 'hourly';

  @override
  void initState() {
    super.initState();
    context.read<StockBloc>().add(FetchStockData(selectedInterval));
  }

  void _updateInterval(String interval) {
    setState(() {
      selectedInterval = interval;
    });
    context.read<StockBloc>().add(FetchStockData(interval));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Stock Data'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Expanded(
              child: BlocBuilder<StockBloc, StockState>(
                builder: (context, state) {
                  return state.when(
                    initial: SizedBox.new,
                    loading: () =>
                        const Center(child: CircularProgressIndicator()),
                    loaded: (viewModel) {
                      final data = _getChartData(viewModel, selectedInterval);
                      return LineChart(data: data);
                    },
                    error: (message) => Center(child: Text(message)),
                  );
                },
              ),
            ),
            IntervalSelector(
              selectedInterval: selectedInterval,
              onIntervalSelected: _updateInterval,
            ),
          ],
        ),
      ),
    );
  }

  List<ChartData> _getChartData(StockViewModel viewModel, String interrval) {
    switch (selectedInterval) {
      case 'hourly':
        return viewModel.hourly
            .map(
              (d) => ChartData(
                time: d.time,
                price: d.price,
                formattedTime: d.formattedTime,
              ),
            )
            .toList();
      case 'daily':
        return viewModel.daily
            .map(
              (d) => ChartData(
                time: d.time,
                price: d.price,
                formattedTime: d.formattedTime,
              ),
            )
            .toList();
      case 'monthly':
        return viewModel.monthly
            .map(
              (d) => ChartData(
                time: d.time,
                price: d.price,
                formattedTime: d.formattedTime,
              ),
            )
            .toList();
      case 'yearly':
        return viewModel.yearly
            .map(
              (d) => ChartData(
                time: d.time,
                price: d.price,
                formattedTime: d.formattedTime,
              ),
            )
            .toList();
      default:
        return viewModel.daily
            .map(
              (d) => ChartData(
                time: d.time,
                price: d.price,
                formattedTime: d.formattedTime,
              ),
            )
            .toList();
    }
  }
}
