import 'package:flutter/material.dart';
import 'package:stock_pulse/core/di/locator.dart';
import 'package:stock_pulse/stock_pulse_app.dart';

void main() async {
  setupLocator();
  WidgetsFlutterBinding.ensureInitialized();
  debugDisableShadows = true;
  runApp(StockPulse());
}
