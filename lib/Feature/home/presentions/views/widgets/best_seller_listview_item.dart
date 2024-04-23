import 'package:bookapp/Feature/home/data/models/book/book.dart';
import 'package:bookapp/Feature/home/presentions/views/widgets/book_rate.dart';
import 'package:bookapp/Feature/home/presentions/views/widgets/custom_book_item.dart';
import 'package:bookapp/core/utils/app_router.dart';
import 'package:bookapp/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class BestSellerListViewItem extends StatelessWidget {
  const BestSellerListViewItem({super.key, required this.book});

  final Book book;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        GoRouter.of(context).push(AppRouter.kBookDetilesView, extra: book);
      },
      child: SizedBox(
        height: 130,
        child: Row(
          children: [
            CustomBookImage(
                imageUrl: book.volumeInfo.imageLinks?.thumbnail ?? ''),
            const SizedBox(width: 30),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width * .5,
                    child: Text(
                      book.volumeInfo.title!,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: Styles.textStyle21,
                    ),
                  ),
                  const SizedBox(height: 3),
                  Text(book.volumeInfo.authors![0], style: Styles.textStyle14),
                  const SizedBox(height: 3),
                  Row(
                    children: [
                      Text(
                        'Free',
                        style: Styles.textStyle18
                            .copyWith(fontWeight: FontWeight.bold),
                      ),
                      const Spacer(),
                      BookRate(
                        rateing: '0',
                        //   book.volumeInfo.maturityRating ?? '0',
                        count: book.volumeInfo.pageCount ?? 0,
                      )
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
