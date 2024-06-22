import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:stock_pulse/core/routing/routing_index.dart';
import 'package:stock_pulse/data/services/stock_service.dart';
import 'package:stock_pulse/data/services/stock_service_impl.dart';
import 'package:stock_pulse/data/sources/remote_source.dart';
import 'package:stock_pulse/data/sources/remote_source_impl.dart';

final GetIt locator = GetIt.instance;
final dio = Dio();

void setupLocator() {
  locator.registerSingleton<AppRouter>(AppRouter());

  locator.registerLazySingleton<RemoteSource>(
    () => RemoteSourceImpl(dio: dio),
  );

  locator.registerLazySingleton<StockService>(
    () => StockServiceImpl(
      remoteSource: locator(),
    ),
  );
}
