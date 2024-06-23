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
  double _scale = 1.0;
  double _previousScale = 1.0;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GestureDetector(
        onScaleStart: (details) {
          setState(() {
            _previousScale = _scale;
            _trackballPosition = details.localFocalPoint;
          });
        },
        onScaleUpdate: (details) {
          setState(() {
            _scale = (_previousScale * details.scale).clamp(1.0, 5.0);
            _trackballPosition = details.localFocalPoint;
          });
        },
        onScaleEnd: (details) {
          setState(() {
            _previousScale = 1.0;
          });
        },
        child: CustomPaint(
          size: Size.infinite,
          painter: LineChartPainter(
            data: widget.data,
            trackballPosition: _trackballPosition,
            scale: _scale,
          ),
        ),
      ),
    );
  }
}
