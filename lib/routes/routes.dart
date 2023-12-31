import 'package:control_gastos/src/dashboard/pages/dashboard.dart';
import 'package:control_gastos/src/login/pages/login_page.dart';
import 'package:control_gastos/src/splash/page/splash_page.dart';
import 'package:go_router/go_router.dart';

// GoRouter configuration
class Routes {
  final routes = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const SplashPage(),
      ),
      GoRoute(
        path: '/login',
        builder: (context, state) => const LoginPage(),
      ),
      GoRoute(
        path: '/dashboard',
        builder: (context, state) => const DashboardPage(),
      ),
    ],
  );
}
