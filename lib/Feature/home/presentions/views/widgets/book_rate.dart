import 'package:bookapp/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class BookRate extends StatelessWidget {
  const BookRate(
      {super.key,
      this.mainAxisAlignment = MainAxisAlignment.start,
      required this.rateing,
      required this.count});

  final MainAxisAlignment mainAxisAlignment;
  final String rateing;
  final int count;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: mainAxisAlignment,
      children: [
        Text(rateing, style: Styles.textStyle14),
        const SizedBox(width: 4),
        const Icon(
          Iconsax.star1,
          color: Color(0xffFFDD4F),
          size: 26,
        ),
        const SizedBox(width: 8),
        Opacity(
          opacity: .5,
          child: Text('($count)', style: Styles.textStyle14),
        ),
      ],
    );
  }
}
