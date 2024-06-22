import 'package:flutter/material.dart';
import 'package:stock_pulse/ui/ui.dart';

class StockGraphShimmer extends StatelessWidget {
  const StockGraphShimmer({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        ShimmerLoadingIndicator(
          width: double.infinity,
          height: 300,
        ),
        SizedBox(height: 16),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ShimmerLoadingIndicator(
              width: 40,
              height: 20,
            ),
            ShimmerLoadingIndicator(
              width: 40,
              height: 20,
            ),
            ShimmerLoadingIndicator(
              width: 40,
              height: 20,
            ),
            ShimmerLoadingIndicator(
              width: 40,
              height: 20,
            ),
          ],
        ),
      ],
    );
  }
}
