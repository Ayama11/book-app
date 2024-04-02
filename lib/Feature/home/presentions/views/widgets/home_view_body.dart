import 'package:bookapp/core/utils/assets.dart';
import 'package:bookapp/core/utils/styles.dart';
import 'package:flutter/material.dart';

import 'appbar.dart';
import 'featured_book_listview.dart';

class BodyHomeView extends StatelessWidget {
  const BodyHomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AppBarCustom(),
          FeaturdBookListView(),
          SizedBox(height: 50),
          Text('Best Sellery', style: Styles.textStyle18),
          SizedBox(height: 20),
          BestSellerListViewItem(),
        ],
      ),
    );
  }
}

class BestSellerListViewItem extends StatelessWidget {
  const BestSellerListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
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
          Column(
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width * .5,
                child: const Text(
                  'Herry potr and got fire',
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: Styles.textStyle21,
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
