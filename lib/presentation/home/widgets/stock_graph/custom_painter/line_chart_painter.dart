import 'package:flutter/material.dart';
import 'package:stock_pulse/presentation/home/widgets/widgets.dart';
import 'package:stock_pulse/ui/ui.dart';

class LineChartPainter extends CustomPainter {
  LineChartPainter({
    required this.data,
    this.trackballPosition,
    required this.scale,
    required this.isHourly,
    required this.onTrackballPointReached,
  });

  final List<ChartData> data;
  final Offset? trackballPosition;
  final double scale;
  final bool isHourly;
  final VoidCallback onTrackballPointReached;

  @override
  void paint(Canvas canvas, Size size) {
    final redPaint = Paint()
      ..color = Colors.red
      ..strokeWidth = 4.0
      ..style = PaintingStyle.stroke;

    final greenPaint = Paint()
      ..color = Colors.green
      ..strokeWidth = 4.0
      ..style = PaintingStyle.stroke;

    final trackballPaint = Paint()
      ..color = Colors.grey
      ..strokeWidth = 1.0;

    final dottedLinePaint = Paint()
      ..color = Palette.textDisabled.shade3
      ..strokeWidth = 1.0
      ..style = PaintingStyle.stroke;

    final dashedLinePaint = Paint()
      ..color = Colors.grey
      ..strokeWidth = 2.0
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

    if (data.isNotEmpty) {
      // Draw the initial horizontal dashed line
      final initialY = size.height - (data.first.index - minY) * yScale;
      final initialLinePath = Path();

      for (var x = 0; x < size.width; x += 10) {
        initialLinePath.moveTo(x.toDouble(), initialY);
        initialLinePath.lineTo((x + 5).toDouble(), initialY);
      }

      canvas.drawPath(initialLinePath, dashedLinePaint);

      final path = Path();
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

        Paint currentPaint;
        if (isHourly && currentPoint.time.hour < 11) {
          currentPaint = currentPoint.time.hour < 12 ? redPaint : greenPaint;
        } else if (!isHourly) {
          currentPaint = greenPaint;
        } else {
          currentPaint = currentPoint.time.hour < 12 ? redPaint : greenPaint;
        }

        path.cubicTo(
          controlPointX1,
          controlPointY1,
          controlPointX2,
          controlPointY2,
          currentX,
          currentY,
        );

        canvas.drawPath(path, currentPaint);
        path.reset();
        path.moveTo(currentX, currentY);
      }

      // Draw the horizontal dotted line at index zero
      final dottedPath = Path();
      final zeroY = size.height - (0 - minY) * yScale;
      for (var x = 0.0; x < size.width; x += 5) {
        dottedPath.moveTo(x, zeroY);
        dottedPath.lineTo(x + 2.5, zeroY);
      }
      canvas.drawPath(dottedPath, dottedLinePaint);

      if (trackballPosition != null) {
        final closestPoint =
            _getClosestDataPoint(trackballPosition!.dx, size, minX, xScale);

        final clampedTrackballX =
            (closestPoint.time.millisecondsSinceEpoch - minX) * xScale;
        final closestY = size.height - (closestPoint.index - minY) * yScale;

        // Draw trackball line
        canvas.drawLine(
          Offset(clampedTrackballX, 0),
          Offset(clampedTrackballX, size.height),
          trackballPaint,
        );

        // Draw circle at trackball position
        canvas.drawCircle(
          Offset(clampedTrackballX, closestY),
          5,
          trackballPaint,
        );

        final distanceFromPoint =
            (trackballPosition!.dx - clampedTrackballX).abs();
        if (distanceFromPoint < 1.0) {
          onTrackballPointReached();
        }

        // Draw the tooltip at the top of the line (above the closest point)
        final textSpan = TextSpan(
          text:
              'Time: ${closestPoint.formattedTime}\nPrice: ${closestPoint.index}',
          style: TextStyles.bodyText2,
        );
        final textPainter = TextPainter(
          text: textSpan,
          textDirection: TextDirection.ltr,
        );
        textPainter.layout();

        // Position the tooltip at the top of the line
        var tooltipX = clampedTrackballX - (textPainter.width / 2);
        const tooltipY = 0; // Position at the top of the chart

        // Clamp the tooltip X position within the bounds of the chart
        tooltipX = tooltipX.clamp(0.0, size.width - textPainter.width - 8);

        final tooltipRect = RRect.fromRectAndRadius(
          Rect.fromLTWH(
            tooltipX,
            tooltipY.toDouble(),
            textPainter.width + 8,
            textPainter.height + 4,
          ),
          const Radius.circular(4),
        );

        final tooltipPaint = Paint()..color = Palette.light.shade5;
        canvas.drawRRect(tooltipRect, tooltipPaint);

        textPainter.paint(canvas, Offset(tooltipX + 4, tooltipY + 2));
      }
    }
  }

  ChartData _getClosestDataPoint(
    double trackballX,
    Size size,
    double minX,
    double xScale,
  ) {
    var closestDistance = double.infinity;
    ChartData? closestPoint;

    for (final point in data) {
      final pointX = (point.time.millisecondsSinceEpoch - minX) * xScale;
      final distance = (trackballX - pointX).abs();
      if (distance < closestDistance) {
        closestDistance = distance;
        closestPoint = point;
      }
    }

    return closestPoint!;
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}
