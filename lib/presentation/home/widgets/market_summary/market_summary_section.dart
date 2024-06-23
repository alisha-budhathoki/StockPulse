import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:stock_pulse/presentation/home/stock_bloc/stock_bloc.dart';
import 'package:stock_pulse/presentation/home/stock_bloc/stock_state.dart';
import 'package:stock_pulse/presentation/home/widgets/widgets.dart';

class MarketSummarySection extends StatelessWidget {
  const MarketSummarySection({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<StockBloc, StockState>(
      builder: (context, state) {
        return state.when(
          initial: SizedBox.new,
          loading: () => const MarketShimmer(),
          loaded: (stockVM) => MarketSummaryContent(viewModel: stockVM),
          error: (message) => Center(child: Text(message)),
        );
      },
    );
  }
}
