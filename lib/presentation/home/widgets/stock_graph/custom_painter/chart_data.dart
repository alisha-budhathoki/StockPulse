class ChartData {
  ChartData({
    required this.time,
    required this.index,
    required this.formattedTime,
  });

  final DateTime time;
  final double index;
  final String formattedTime;
}
