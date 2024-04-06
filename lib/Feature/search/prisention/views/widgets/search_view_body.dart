import 'package:bookapp/Feature/search/prisention/views/widgets/textfield_custom.dart';
import 'package:bookapp/constes.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../../core/utils/styles.dart';
import '../../../../home/presentions/views/widgets/best_seller_listview_item.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: kPadding30,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 12),
          TextFieldCustom(),
          SizedBox(height: 24),
          Text('Resulet Search', style: Styles.textStyle18),
          SizedBox(height: 24),
          Expanded(child: ResuletSearchListView())
        ],
      ),
    );
  }
}

class ResuletSearchListView extends StatelessWidget {
  const ResuletSearchListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 8,
      padding: EdgeInsets.zero,
      itemBuilder: (BuildContext context, int index) {
        return const Padding(
          padding: EdgeInsets.symmetric(vertical: 10),
          child: BestSellerListViewItem(),
        );
      },
    );
  }
}
