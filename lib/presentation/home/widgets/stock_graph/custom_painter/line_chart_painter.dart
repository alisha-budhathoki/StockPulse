import 'package:flutter/material.dart';
import 'package:stock_pulse/presentation/home/widgets/widgets.dart';
import 'package:stock_pulse/ui/ui.dart';

class LineChartPainter extends CustomPainter {
  LineChartPainter({
    required this.data,
    this.trackballPosition,
    required this.scale,
  });
  final List<ChartData> data;
  final Offset? trackballPosition;
  final double scale;

  @override
  void paint(Canvas canvas, Size size) {
    final linePaint = Paint()
      ..color = Palette.success.shade5
      ..strokeWidth = 4.0
      ..style = PaintingStyle.stroke;

    final trackballPaint = Paint()
      ..color = Palette.error.shade5
      ..strokeWidth = 1.0;

    final dottedLinePaint = Paint()
      ..color = Palette.textDisabled.shade3
      ..strokeWidth = 1.0
      ..style = PaintingStyle.stroke;

    final minY = data.map((d) => d.index).reduce((a, b) => a < b ? a : b);
    final maxY = data.map((d) => d.index).reduce((a, b) => a > b ? a : b);
    final minX = data
        .map((d) => d.time.millisecondsSinceEpoch)
        .reduce((a, b) => a < b ? a : b)
        .toDouble();
    final maxX = data
        .map((d) => d.time.millisecondsSinceEpoch)
        .reduce((a, b) => a > b ? a : b)
        .toDouble();

    final xScale = (size.width / (maxX - minX)) * scale;
    final yScale = size.height / (maxY - minY);

    final path = Path();

    if (data.isNotEmpty) {
      final firstPoint = data.first;
      final firstX = (firstPoint.time.millisecondsSinceEpoch - minX) * xScale;
      final firstY = size.height - (firstPoint.index - minY) * yScale;
      path.moveTo(firstX, firstY);

      for (var i = 1; i < data.length; i++) {
        final currentPoint = data[i];
        final currentX =
            (currentPoint.time.millisecondsSinceEpoch - minX) * xScale;
        final currentY = size.height - (currentPoint.index - minY) * yScale;

        final previousPoint = data[i - 1];
        final previousX =
            (previousPoint.time.millisecondsSinceEpoch - minX) * xScale;
        final previousY = size.height - (previousPoint.index - minY) * yScale;

        final controlPointX1 = (previousX + currentX) / 2;
        final controlPointY1 = previousY;
        final controlPointX2 = (previousX + currentX) / 2;
        final controlPointY2 = currentY;

        path.cubicTo(
          controlPointX1,
          controlPointY1,
          controlPointX2,
          controlPointY2,
          currentX,
          currentY,
        );
      }

      canvas.drawPath(path, linePaint);

      // Drawing the horizontal dotted line at index zero
      final dottedPath = Path();
      final zeroY = size.height - (0 - minY) * yScale;
      for (var x = 0.0; x < size.width; x += 5) {
        dottedPath.moveTo(x, zeroY);
        dottedPath.lineTo(x + 2.5, zeroY);
      }
      canvas.drawPath(dottedPath, dottedLinePaint);

      if (trackballPosition != null) {
        final trackballX = trackballPosition!.dx.clamp(0.0, size.width);
        canvas.drawLine(
          Offset(trackballX, 0),
          Offset(trackballX, size.height),
          trackballPaint,
        );

        // Finding the closest data point to the trackball
        final normalizedTrackballX = trackballX / size.width;
        final index = (normalizedTrackballX * data.length)
            .clamp(0, data.length - 1)
            .toInt();
        final closestPoint = data[index];
        final closestX =
            (closestPoint.time.millisecondsSinceEpoch - minX) * xScale;
        final closestY = size.height - (closestPoint.index - minY) * yScale;

        canvas.drawCircle(Offset(closestX, closestY), 5, trackballPaint);

        // Drawing tooltip above the trackball line
        final textSpan = TextSpan(
          text: '${closestPoint.formattedTime}\n Price: ${closestPoint.index}',
          style: TextStyles.bodyText2,
        );
        final textPainter = TextPainter(
          text: textSpan,
          textDirection: TextDirection.ltr,
        );
        textPainter.layout();

        final tooltipX = trackballX - (textPainter.width / 2);
        // Positioning it above the top of the chart
        const tooltipY = 0.0;
        final tooltipWidth = textPainter.width + 8;
        final tooltipHeight = textPainter.height + 4;

        final tooltipRect = RRect.fromRectAndRadius(
          Rect.fromLTWH(tooltipX, tooltipY, tooltipWidth, tooltipHeight),
          const Radius.circular(4),
        );

        final tooltipPaint = Paint()..color = Palette.light.shade5;
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
