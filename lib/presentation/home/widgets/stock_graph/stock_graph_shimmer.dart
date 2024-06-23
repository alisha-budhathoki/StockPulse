import 'package:flutter/material.dart';
import 'package:stock_pulse/ui/ui.dart';

class StockGraphShimmer extends StatelessWidget {
  const StockGraphShimmer({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return Column(
          children: [
            ShimmerLoadingIndicator(
              width: constraints.maxWidth,
              height: constraints.maxHeight * 0.75,
            ),
            const SizedBox(height: 16),
            const Row(
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
      },
    );
  }
}
