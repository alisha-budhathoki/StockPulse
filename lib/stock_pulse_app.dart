import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:stock_pulse/core/di/locator.dart';
import 'package:stock_pulse/core/routing/routing_index.dart';
import 'package:stock_pulse/ui/ui.dart';

class StockPulse extends StatelessWidget {
  StockPulse({super.key});

  final AppRouter _appRouter = locator<AppRouter>();

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      builder: DevicePreview.appBuilder,
      locale: DevicePreview.locale(context),
      theme: AppTheme.lightTheme,
      routerDelegate: _appRouter.router.routerDelegate,
      routeInformationParser: _appRouter.router.routeInformationParser,
      routeInformationProvider: _appRouter.router.routeInformationProvider,
    );
  }
}
