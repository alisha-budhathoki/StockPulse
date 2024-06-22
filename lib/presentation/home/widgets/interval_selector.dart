import 'package:flutter/material.dart';
import 'package:stock_pulse/ui/ui.dart';

class IntervalSelector extends StatelessWidget {
  const IntervalSelector({
    super.key,
    required this.selectedInterval,
    required this.onIntervalSelected,
  });

  final String selectedInterval;
  final ValueChanged<String> onIntervalSelected;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: _buildCustomButtons(),
    );
  }

  List<Widget> _buildCustomButtons() {
    const intervals = ['minute', 'hourly', 'daily', 'monthly', 'yearly'];
    const labels = ['1Min', '1Hr', '1D', '1M', '1Y'];

    return List<Widget>.generate(
      intervals.length,
      (index) {
        final interval = intervals[index];
        final label = labels[index];

        return CustomButton(
          backgroundColor: selectedInterval == interval
              ? Palette.primary.shade4
              : Palette.transparent,
          foregroundColor: selectedInterval == interval
              ? Palette.light.shade5
              : Palette.dark.shade3,
          labelText: label,
          borderRadius: 16.0,
          size: ButtonSize.small,
          iconPosition: IconPosition.right,
          onPressed: () {
            onIntervalSelected(interval);
          },
          borderColor: Palette.transparent,
        );
      },
    );
  }
}
