import 'package:get_it/get_it.dart';
import 'package:stock_pulse/core/routing/routing_index.dart';

final GetIt locator = GetIt.instance;

void setupLocator() {
  locator.registerSingleton<AppRouter>(AppRouter());
}
