import 'package:flutter/material.dart';
import 'package:stock_pulse/presentation/home/view_models/stock_view_model.dart';
import 'package:stock_pulse/ui/ui.dart';

class MarketChange extends StatelessWidget {
  const MarketChange({
    super.key,
    required this.marketSummary,
  });

  final MarketSummaryViewModel marketSummary;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        _buildMarketChangeStatus(),
        const Spacer(),
        _buildMarketStatus(),
      ],
    );
  }

  Widget _buildMarketChangeStatus() {
    return Row(
      children: [
        Text(
          '2.1 Ar',
          style: TextStyles.h5.bold,
        ),
        const SizedBox(width: 4.0),
        Icon(
          marketSummary.percentChange >= 0
              ? Icons.arrow_upward
              : Icons.arrow_downward,
          color: marketSummary.percentChange >= 0
              ? Palette.success.shade4
              : Palette.error.shade4,
        ),
        Text(
          '${marketSummary.change} (${marketSummary.percentChange}%)',
          style: marketSummary.percentChange >= 0
              ? TextStyles.h5.bold.withColor(Palette.success.shade4)
              : TextStyles.h5.bold.withColor(Palette.error.shade4),
        ),
      ],
    );
  }

  Widget _buildMarketStatus() {
    return Row(
      children: [
        Dot(
          color: Palette.success.shade4,
        ),
        const SizedBox(width: 4.0),
        Text(
          'Market: ',
          style: TextStyles.bodyText3.regular,
        ),
        Text(
          'OPEN',
          style: TextStyles.bodyText3.withColor(Palette.success.shade4).bold,
        ),
      ],
    );
  }
}
