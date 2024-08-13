import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:vibration/vibration.dart';
import 'package:stock_pulse/presentation/home/widgets/widgets.dart';

class LineChart extends StatefulWidget {
  const LineChart({super.key, required this.data, required this.isHourly});

  final List<ChartData> data;
  final bool isHourly;

  @override
  LineChartState createState() => LineChartState();
}

class LineChartState extends State<LineChart> {
  Offset? _trackballPosition;
  double _scale = 1.0;
  double _previousScale = 1.0;
  late AudioPlayer _audioPlayer;

  @override
  void initState() {
    super.initState();
    _audioPlayer = AudioPlayer();
    _audioPlayer.setReleaseMode(ReleaseMode.stop);
  }

  @override
  void dispose() {
    _audioPlayer.dispose();
    super.dispose();
  }

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
            isHourly: widget.isHourly,
            onTrackballPointReached: _onTrackballPointReached,
          ),
        ),
      ),
    );
  }

  Future<void> _onTrackballPointReached() async {
    try {
      // Play clank sound
      await _audioPlayer.play(AssetSource('sounds/clank.mp3'));

      // Trigger vibration
      if (await Vibration.hasVibrator() ?? false) {
        Vibration.vibrate(duration: 50); // Short vibration duration
      }
    } catch (e) {
      debugPrint('Error playing sound or vibrating: $e');
    }
  }
}
