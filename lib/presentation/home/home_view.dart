import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:stock_pulse/core/di/locator.dart';
import 'package:stock_pulse/data/services/stock_service.dart';
import 'package:stock_pulse/presentation/home/stock_bloc/stock_bloc.dart';
import 'package:stock_pulse/presentation/home/widgets/widgets.dart';
import 'package:stock_pulse/ui/ui.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => StockBloc(
        stockService: locator<StockService>(),
      ),
      child: PaddedScaffold(
        appBar: AppBar(),
        body: ListView(
          children: const [
            MarketSummarySection(),
            SizedBox(height: 20.0),
            StockGraphSection(),
          ],
        ),
      ),
    );
  }
}
