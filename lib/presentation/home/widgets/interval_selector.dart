import 'package:flutter/material.dart';

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
      children: [
        ChoiceChip(
          label: const Text('1Hr'),
          selected: selectedInterval == 'hourly',
          onSelected: (selected) {
            if (selected) onIntervalSelected('hourly');
          },
        ),
        ChoiceChip(
          label: const Text('1D'),
          selected: selectedInterval == 'daily',
          onSelected: (selected) {
            if (selected) onIntervalSelected('daily');
          },
        ),
        ChoiceChip(
          label: const Text('1M'),
          selected: selectedInterval == 'monthly',
          onSelected: (selected) {
            if (selected) onIntervalSelected('monthly');
          },
        ),
        ChoiceChip(
          label: const Text('1Y'),
          selected: selectedInterval == 'yearly',
          onSelected: (selected) {
            if (selected) onIntervalSelected('yearly');
          },
        ),
      ],
    );
  }
}
