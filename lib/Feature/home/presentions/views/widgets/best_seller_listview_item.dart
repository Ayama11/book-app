import 'package:bookapp/Feature/home/presentions/views/widgets/book_rate.dart';
import 'package:bookapp/core/utils/app_router.dart';
import 'package:bookapp/core/utils/assets.dart';
import 'package:bookapp/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class BestSellerListViewItem extends StatelessWidget {
  const BestSellerListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        GoRouter.of(context).push(AppRouter.kBookDetilesView);
      },
      child: SizedBox(
        height: 130,
        child: Row(
          children: [
            AspectRatio(
              aspectRatio: 2.4 / 4,
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    color: Colors.amber,
                    image: const DecorationImage(
                        fit: BoxFit.fill, image: AssetImage(AssetsData.test))),
              ),
            ),
            const SizedBox(width: 30),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width * .5,
                    child: const Text(
                      'Herry potr and got fire',
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: Styles.textStyle21,
                    ),
                  ),
                  const SizedBox(height: 3),
                  const Text('J.K. Rorwing', style: Styles.textStyle14),
                  const SizedBox(height: 3),
                  Row(
                    children: [
                      Text(
                        '19.9 @',
                        style: Styles.textStyle18
                            .copyWith(fontWeight: FontWeight.bold),
                      ),
                      const Spacer(),
                      const BookRate()
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
