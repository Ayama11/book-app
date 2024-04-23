import 'package:bookapp/Feature/home/data/models/book/book.dart';
import 'package:bookapp/Feature/home/data/reop/home_repo_impl.dart';
import 'package:bookapp/Feature/home/presentions/views/home_view.dart';
import 'package:bookapp/Feature/home/presentions/views/widgets/book_detiles_view.dart';
import 'package:bookapp/Feature/search/prisention/views/search_view.dart';
import 'package:bookapp/Feature/splash/prisention/manger/similer_books_cuibt/similar_books_cubit.dart';
import 'package:bookapp/Feature/splash/prisention/views/splash_view.dart';
import 'package:bookapp/core/utils/services_locater.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {
  static const kHomeView = '/HomeView';
  static const kBookDetilesView = '/BookDetilesView';
  static const kSearchView = '/SearchView';
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
        builder: (context, state) => BlocProvider(
          create: (context) => SimilarBooksCubit(getIt.get<HomeRepoImpl>()),
          child: BookDetilesView(
            book: state.extra as Book,
          ),
        ),
      ),
      GoRoute(
        path: kSearchView,
        builder: (context, state) => const SearchView(),
      ),
    ],
  );
}
