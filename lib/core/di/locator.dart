import 'package:get_it/get_it.dart';
import 'package:stock_pulse/core/routing/routing_index.dart';
import 'package:stock_pulse/data/services/stock_service.dart';
import 'package:stock_pulse/data/services/stock_service_impl.dart';
import 'package:stock_pulse/data/sources/remote_source.dart';
import 'package:stock_pulse/data/sources/remote_source_impl.dart';

final GetIt locator = GetIt.instance;

void setupLocator() {
  locator.registerSingleton<AppRouter>(AppRouter());

  locator.registerLazySingleton<RemoteSource>(
    () => RemoteSourceImpl(
      baseUrl: 'https://run.mocky.io/v3/635a5517-f09e-4f79-b026-2d5c2fb0c09e',
    ),
  );
  locator.registerLazySingleton<StockService>(
    () => StockServiceImpl(
      remoteSource: locator(),
    ),
  );
}
