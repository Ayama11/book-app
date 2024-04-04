import 'package:bookapp/Feature/home/presentions/views/widgets/body_detiels_book_view.dart';
import 'package:flutter/material.dart';

class BookDetilesView extends StatelessWidget {
  const BookDetilesView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: DetilesBookBody(),
    );
  }
}
