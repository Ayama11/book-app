import 'package:bookapp/Feature/home/data/models/book/book.dart';
import 'package:bookapp/Feature/home/presentions/views/widgets/body_detiels_book_view.dart';
import 'package:bookapp/Feature/splash/prisention/manger/similer_books_cuibt/similar_books_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BookDetilesView extends StatefulWidget {
  const BookDetilesView({super.key, required this.book});

  final Book book;
  @override
  State<BookDetilesView> createState() => _BookDetilesViewState();
}

class _BookDetilesViewState extends State<BookDetilesView> {
  @override
  void initState() {
    BlocProvider.of<SimilarBooksCubit>(context)
        .featchSimilarBooks(category: widget.book.volumeInfo.categories![0]);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: DetilesBookBody(),
    );
  }
}
