import 'package:bookapp/constes.dart';
import 'package:bookapp/Feature/splash/prisention/views/splash_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
//import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const BookApp());
}

class BookApp extends StatelessWidget {
  const BookApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: kPrimaryColor,
        //  textTheme: GoogleFonts.montagaTextTheme(ThemeData.dark().textTheme),
      ),
      home: const SplashView(),
    );
  }
}
