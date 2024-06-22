import 'package:flutter/material.dart';
import 'package:stock_pulse/ui/ui.dart';

class MarketShimmer extends StatelessWidget {
  const MarketShimmer({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            ShimmerLoadingIndicator(
              width: 100,
              height: 36,
            ),
            Spacer(),
            ShimmerLoadingIndicator(
              width: 80,
              height: 36,
              borderRadius: 10.0,
            ),
          ],
        ),
        SizedBox(height: 8.0),
        Row(
          children: [
            ShimmerLoadingIndicator(
              width: 60,
              height: 24,
            ),
            SizedBox(width: 4.0),
            ShimmerLoadingIndicator(
              width: 40,
              height: 24,
            ),
            ShimmerLoadingIndicator(
              width: 60,
              height: 24,
            ),
            Spacer(),
            ShimmerLoadingIndicator(
              width: 60,
              height: 24,
            ),
          ],
        ),
        SizedBox(height: 8),
        Row(
          children: [
            ShimmerLoadingIndicator(
              width: 200,
              height: 20,
            ),
            Spacer(),
            ShimmerLoadingIndicator(
              width: 150,
              height: 20,
            ),
          ],
        ),
        SizedBox(height: 8),
      ],
    );
  }
}
