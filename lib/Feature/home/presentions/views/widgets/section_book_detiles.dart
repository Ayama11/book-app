import 'package:bookapp/Feature/home/presentions/views/widgets/action_button.dart';
import 'package:bookapp/Feature/home/presentions/views/widgets/book_rate.dart';
import 'package:bookapp/Feature/home/presentions/views/widgets/custom_book_item.dart';
import 'package:flutter/material.dart';

import '../../../../../core/utils/styles.dart';

class BookDetilesSection extends StatelessWidget {
  const BookDetilesSection({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Column(children: [
      Padding(
        padding: EdgeInsets.symmetric(horizontal: width * .2),
        child: const CustomBookImage(
          imageUrl: '',
        ),
      ),
      const SizedBox(height: 45),
      const Text('The Jungle Book', style: Styles.textStyle30),
      const SizedBox(height: 6),
      Opacity(
        opacity: .7,
        child: Text(
          'Rouding Kliping',
          style: Styles.textStyle18.copyWith(
              fontStyle: FontStyle.italic, fontWeight: FontWeight.w500),
        ),
      ),
      const SizedBox(height: 16),
      const BookRate(
        mainAxisAlignment: MainAxisAlignment.center,
        rateing: '',
        count: 1,
      ),
      const SizedBox(height: 24),
      const ActionButton()
    ]);
  }
}
