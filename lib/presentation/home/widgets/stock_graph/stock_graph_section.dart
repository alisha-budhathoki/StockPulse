import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:stock_pulse/presentation/home/stock_bloc/stock_bloc.dart';
import 'package:stock_pulse/presentation/home/stock_bloc/stock_event.dart';
import 'package:stock_pulse/presentation/home/stock_bloc/stock_state.dart';
import 'package:stock_pulse/presentation/home/view_models/stock_view_model.dart';
import 'package:stock_pulse/presentation/home/widgets/widgets.dart';

class StockGraphSection extends StatefulWidget {
  const StockGraphSection({super.key});

  @override
  StockGraphSectionState createState() => StockGraphSectionState();
}

class StockGraphSectionState extends State<StockGraphSection> {
  String selectedInterval = 'minute';

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
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          SizedBox(
            height: 250.0,
            child: BlocBuilder<StockBloc, StockState>(
              builder: (context, state) {
                return state.maybeWhen(
                  orElse: () => const SizedBox.shrink(),
                  loading: () => const StockGraphShimmer(),
                  loaded: (viewModel) {
                    final data = _getChartData(viewModel, selectedInterval);
                    return LineChart(data: data);
                  },
                  error: (message) => Center(child: Text(message)),
                );
              },
            ),
          ),
          const SizedBox(height: 16),
          IntervalSelector(
            selectedInterval: selectedInterval,
            onIntervalSelected: _updateInterval,
          ),
        ],
      ),
    );
  }

  List<ChartData> _getChartData(StockViewModel viewModel, String interval) {
    switch (interval) {
      case 'minute':
        return viewModel.minuteData
            .map(
              (d) => ChartData(
                time: d.date,
                index: d.index,
                formattedTime: d.formattedTime,
              ),
            )
            .toList();

      case 'hourly':
        return viewModel.hourData
            .map(
              (d) => ChartData(
                time: d.date,
                index: d.index,
                formattedTime: d.formattedTime,
              ),
            )
            .toList();
      case 'daily':
        return viewModel.dayData
            .map(
              (d) => ChartData(
                time: d.date,
                index: d.index,
                formattedTime: d.formattedTime,
              ),
            )
            .toList();
      case 'monthly':
        return viewModel.monthData
            .map(
              (d) => ChartData(
                time: d.date,
                index: d.index,
                formattedTime: d.formattedTime,
              ),
            )
            .toList();
      case 'yearly':
        return viewModel.yearlyData
            .map(
              (d) => ChartData(
                time: d.date,
                index: d.index,
                formattedTime: d.formattedTime,
              ),
            )
            .toList();
      default:
        return viewModel.minuteData
            .map(
              (d) => ChartData(
                time: d.date,
                index: d.index,
                formattedTime: d.formattedTime,
              ),
            )
            .toList();
    }
  }
}
