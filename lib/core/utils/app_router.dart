import 'package:bookapp/Feature/home/presentions/views/home_view.dart';
import 'package:bookapp/Feature/home/presentions/views/widgets/book_detiles_view.dart';
import 'package:bookapp/Feature/splash/prisention/views/splash_view.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {
  static const kHomeView = '/HomeView';
  static const kBookDetilesView = '/BookDetilesView';
  static final router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const SplashView(),
      ),
      GoRoute(
        path: kHomeView,
        builder: (context, state) => const HomeView(),
      ),
      GoRoute(
        path: kBookDetilesView,
        builder: (context, state) => const BookDetilesView(),
      ),
    ],
  );
}
