import 'package:bookapp/Feature/home/data/reop/home_repo_impl.dart';
import 'package:bookapp/Feature/splash/prisention/manger/futured_book_cubit/feutured_book_cubit.dart';
import 'package:bookapp/Feature/splash/prisention/manger/newest_book_cubit/newest_book_cubit.dart';
import 'package:bookapp/constes.dart';
import 'package:bookapp/core/utils/app_router.dart';
import 'package:bookapp/core/utils/services_locater.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:google_fonts/google_fonts.dart';

void main() {
  setUpServiceLocater();
  runApp(const BookApp());
}

class BookApp extends StatelessWidget {
  const BookApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
            create: (context) => FeuturedBookCubit(getIt.get<HomeRepoImpl>())
              ..featchFeaturedBooks()),
        BlocProvider(
            create: (context) =>
                NewestBookCubit(getIt.get<HomeRepoImpl>())..featchNewestBooks())
      ],
      child: MaterialApp.router(
        routerConfig: AppRouter.router,
        debugShowCheckedModeBanner: false,
        theme: ThemeData.dark().copyWith(
          scaffoldBackgroundColor: kPrimaryColor,
          textTheme: GoogleFonts.montagaTextTheme(ThemeData.dark().textTheme),
        ),
      ),
    );
  }
}
