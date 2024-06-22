import 'package:flutter/material.dart';
import 'package:stock_pulse/presentation/home/widgets/widgets.dart';

class LineChart extends StatefulWidget {
  const LineChart({super.key, required this.data});

  final List<ChartData> data;

  @override
  LineChartState createState() => LineChartState();
}

class LineChartState extends State<LineChart> {
  Offset? _trackballPosition;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTapDown: (details) {
        setState(() {
          _trackballPosition = details.localPosition;
        });
      },
      onPanUpdate: (details) {
        setState(() {
          _trackballPosition = details.localPosition;
        });
      },
      child: CustomPaint(
        size: Size.infinite,
        painter: LineChartPainter(
          data: widget.data,
          trackballPosition: _trackballPosition,
        ),
      ),
    );
  }
}
