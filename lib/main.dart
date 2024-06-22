import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:stock_pulse/core/di/locator.dart';
import 'package:stock_pulse/stock_pulse_app.dart';

void main() async {
  setupLocator();
  WidgetsFlutterBinding.ensureInitialized();
  debugDisableShadows = true;
  runApp(
    DevicePreview(
      builder: (conrtext) => StockPulse(),
    ),
  );
}
