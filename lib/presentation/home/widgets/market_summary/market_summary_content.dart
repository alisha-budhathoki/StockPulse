import 'package:flutter/material.dart';
import 'package:stock_pulse/presentation/home/view_models/stock_view_model.dart';
import 'package:stock_pulse/presentation/home/widgets/widgets.dart';
import 'package:stock_pulse/ui/ui.dart';

class MarketSummaryContent extends StatelessWidget {
  const MarketSummaryContent({super.key, required this.viewModel});

  final StockViewModel viewModel;

  @override
  Widget build(BuildContext context) {
    final marketSummary = viewModel.marketSummary;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _buildHeader(marketSummary),
        const SizedBox(height: 8.0),
        MarketChange(marketSummary: marketSummary),
        const SizedBox(height: 8.0),
        _buildMarketStatus(),
        const SizedBox(height: 8.0),
      ],
    );
  }

  Widget _buildHeader(MarketSummaryViewModel marketSummary) {
    return Row(
      children: [
        Text(
          marketSummary.todayNepse,
          style: TextStyles.h8.bold,
        ),
        const Spacer(),
        CustomButton(
          backgroundColor: Palette.light.shade3,
          foregroundColor: Palette.dark.shade5,
          icon: const Icon(Icons.arrow_drop_down),
          onPressed: () {},
          labelText: 'Nepse',
          borderRadius: 10.0,
          size: ButtonSize.small,
          iconPosition: IconPosition.right,
        ),
      ],
    );
  }

  Widget _buildMarketStatus() {
    return Row(
      children: [
        Text(
          'As of May 09, 2024 03:00 PM',
          style: TextStyles.bodyText1.regular,
        ),
        const Spacer(),
        Text(
          'Closes in 3 hrs 9 min',
          style: TextStyles.bodyText1.regular,
        ),
      ],
    );
  }
}
