import 'package:bookapp/Feature/home/presentions/views/widgets/best_seller_listview.dart';
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
          BestSellerListView()
        ],
      ),
    );
  }
}

