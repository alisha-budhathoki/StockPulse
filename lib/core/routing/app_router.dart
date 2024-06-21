import 'package:go_router/go_router.dart';
import 'package:stock_pulse/presentation/error_screen.dart';
import 'package:stock_pulse/presentation/home/home_view.dart';
import 'package:stock_pulse/presentation/second_screen.dart';

class AppRouter {
  AppRouter()
      : router = GoRouter(
          routes: [
            GoRoute(
              path: '/',
              builder: (context, state) => const HomeView(),
            ),
            GoRoute(
              path: '/secondScreen',
              builder: (context, state) => const SecondScreen(),
            ),
          ],
          errorBuilder: (context, state) => ErrorScreen(
            errorMessage: state.error.toString(),
          ),
        );

  final GoRouter router;
}
