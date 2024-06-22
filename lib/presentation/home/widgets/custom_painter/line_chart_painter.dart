import 'package:flutter/material.dart';
import 'package:stock_pulse/presentation/home/widgets/widgets.dart';

class LineChartPainter extends CustomPainter {
  final List<ChartData> data;
  final Offset? trackballPosition;

  LineChartPainter({
    required this.data,
    this.trackballPosition,
  });

  @override
  void paint(Canvas canvas, Size size) {
    final Paint linePaint = Paint()
      ..color = Colors.green
      ..strokeWidth = 2.0
      ..style = PaintingStyle.stroke;

    final Paint trackballPaint = Paint()
      ..color = Colors.red
      ..strokeWidth = 1.0;

    final Paint dottedLinePaint = Paint()
      ..color = Colors.grey
      ..strokeWidth = 1.0
      ..style = PaintingStyle.stroke;

    final double minY =
        data.map((d) => d.price).reduce((a, b) => a < b ? a : b);
    final double maxY =
        data.map((d) => d.price).reduce((a, b) => a > b ? a : b);
    final double minX = data
        .map((d) => d.time.millisecondsSinceEpoch)
        .reduce((a, b) => a < b ? a : b)
        .toDouble();
    final double maxX = data
        .map((d) => d.time.millisecondsSinceEpoch)
        .reduce((a, b) => a > b ? a : b)
        .toDouble();

    final double xScale = size.width / (maxX - minX);
    final double yScale = size.height / (maxY - minY);

    Path path = Path();

    if (data.isNotEmpty) {
      final ChartData firstPoint = data.first;
      final double firstX =
          (firstPoint.time.millisecondsSinceEpoch - minX) * xScale;
      final double firstY = size.height - (firstPoint.price - minY) * yScale;
      path.moveTo(firstX, firstY);

      for (int i = 1; i < data.length; i++) {
        final ChartData currentPoint = data[i];
        final double currentX =
            (currentPoint.time.millisecondsSinceEpoch - minX) * xScale;
        final double currentY =
            size.height - (currentPoint.price - minY) * yScale;

        final ChartData previousPoint = data[i - 1];
        final double previousX =
            (previousPoint.time.millisecondsSinceEpoch - minX) * xScale;
        final double previousY =
            size.height - (previousPoint.price - minY) * yScale;

        final double controlPointX1 = (previousX + currentX) / 2;
        final double controlPointY1 = previousY;
        final double controlPointX2 = (previousX + currentX) / 2;
        final double controlPointY2 = currentY;

        path.cubicTo(controlPointX1, controlPointY1, controlPointX2,
            controlPointY2, currentX, currentY);
      }

      canvas.drawPath(path, linePaint);

      // Draw the horizontal dotted line at price zero
      final Path dottedPath = Path();
      final double zeroY = size.height - (0 - minY) * yScale;
      for (double x = 0; x < size.width; x += 5) {
        dottedPath.moveTo(x, zeroY);
        dottedPath.lineTo(x + 2.5, zeroY);
      }
      canvas.drawPath(dottedPath, dottedLinePaint);

      if (trackballPosition != null) {
        final double trackballX = trackballPosition!.dx.clamp(0.0, size.width);
        canvas.drawLine(Offset(trackballX, 0), Offset(trackballX, size.height),
            trackballPaint);

        // Find the closest data point to the trackball
        final double normalizedTrackballX = trackballX / size.width;
        final int index = (normalizedTrackballX * data.length)
            .clamp(0, data.length - 1)
            .toInt();
        final ChartData closestPoint = data[index];
        final double closestX =
            (closestPoint.time.millisecondsSinceEpoch - minX) * xScale;
        final double closestY =
            size.height - (closestPoint.price - minY) * yScale;

        canvas.drawCircle(Offset(closestX, closestY), 5, trackballPaint);

        // Draw tooltip above the trackball line
        final textSpan = TextSpan(
          text: closestPoint.formattedTime,
          style: TextStyle(color: Colors.black, fontSize: 12),
        );
        final textPainter = TextPainter(
          text: textSpan,
          textDirection: TextDirection.ltr,
        );
        textPainter.layout();

        final double tooltipX = trackballX - (textPainter.width / 2);
        final double tooltipY = 0; // Position it above the top of the chart

        final double tooltipWidth = textPainter.width + 8;
        final double tooltipHeight = textPainter.height + 4;

        final RRect tooltipRect = RRect.fromRectAndRadius(
          Rect.fromLTWH(tooltipX, tooltipY, tooltipWidth, tooltipHeight),
          Radius.circular(4),
        );

        final Paint tooltipPaint = Paint()..color = Colors.white;
        canvas.drawRRect(tooltipRect, tooltipPaint);

        textPainter.paint(canvas, Offset(tooltipX + 4, tooltipY + 2));
      }
    }
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}
