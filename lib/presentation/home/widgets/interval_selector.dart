import 'package:flutter/material.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';
import 'package:stock_pulse/ui/ui.dart';

class IntervalSelector extends StatefulWidget {
  const IntervalSelector({
    super.key,
    required this.selectedInterval,
    required this.onIntervalSelected,
  });

  final String selectedInterval;
  final ValueChanged<String> onIntervalSelected;

  @override
  IntervalSelectorState createState() => IntervalSelectorState();
}

class IntervalSelectorState extends State<IntervalSelector> {
  final ItemScrollController _scrollController = ItemScrollController();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 30.0,
      child: ScrollablePositionedList.builder(
        scrollDirection: Axis.horizontal,
        itemCount: _intervals.length,
        itemBuilder: (context, index) {
          final interval = _intervals[index];
          final label = _labels[index];
          return _buildInterval(interval, label, index);
        },
        itemScrollController: _scrollController,
      ),
    );
  }

  Widget _buildInterval(String interval, String label, int index) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 4.0),
      child: CustomButton(
        backgroundColor: widget.selectedInterval == interval
            ? Palette.primary.shade4
            : Palette.transparent,
        foregroundColor: widget.selectedInterval == interval
            ? Palette.light.shade5
            : Palette.dark.shade3,
        labelText: label,
        borderRadius: 16.0,
        size: ButtonSize.small,
        iconPosition: IconPosition.right,
        onPressed: () {
          widget.onIntervalSelected(interval);
          _scrollToSelectedButton(index);
        },
        borderColor: Palette.transparent,
      ),
    );
  }

  void _scrollToSelectedButton(int index) {
    _scrollController.scrollTo(
      index: index,
      alignment: 0.5, // Centers the selected button
      duration: const Duration(milliseconds: 300),
      curve: Curves.easeInOut,
    );
  }

  List<String> get _intervals =>
      ['minute', 'hourly', 'daily', 'monthly', 'yearly'];
  List<String> get _labels => ['1Min', '1Hr', '1D', '1M', '1Y'];
}
