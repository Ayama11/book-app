import 'package:bookapp/Feature/home/data/models/book/book.dart';
import 'package:bookapp/Feature/home/presentions/views/widgets/action_button.dart';
import 'package:bookapp/Feature/home/presentions/views/widgets/book_rate.dart';
import 'package:bookapp/Feature/home/presentions/views/widgets/custom_book_item.dart';
import 'package:flutter/material.dart';

import '../../../../../core/utils/styles.dart';

class BookDetilesSection extends StatelessWidget {
  const BookDetilesSection({super.key, required this.book});

  final Book book;
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Column(children: [
      Padding(
        padding: EdgeInsets.symmetric(horizontal: width * .2),
        child: CustomBookImage(
          imageUrl: book.volumeInfo.imageLinks?.thumbnail ?? '',
        ),
      ),
      const SizedBox(height: 45),
      Text(
        book.volumeInfo.title!,
        style: Styles.textStyle30,
        textAlign: TextAlign.center,
      ),
      const SizedBox(height: 6),
      Opacity(
        opacity: .7,
        child: Text(
          book.volumeInfo.authors![0],
          style: Styles.textStyle16.copyWith(
              fontStyle: FontStyle.italic, fontWeight: FontWeight.w500),
        ),
      ),
      const SizedBox(height: 16),
      BookRate(
        mainAxisAlignment: MainAxisAlignment.center,
        rateing: book.volumeInfo.maturityRating ?? '',
        count: book.volumeInfo.pageCount ?? 0,
      ),
      const SizedBox(height: 24),
      const ActionButton()
    ]);
  }
}
