class ChartData {
  ChartData({
    required this.time,
    required this.price,
    required this.formattedTime,
  });

  final DateTime time;
  final double price;
  final String formattedTime;
}
