import 'package:bookapp/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class BookRate extends StatelessWidget {
  const BookRate({super.key, this.mainAxisAlignment = MainAxisAlignment.start});

  final MainAxisAlignment mainAxisAlignment;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: mainAxisAlignment,
      children: const [
        Icon(
          Iconsax.star1,
          color: Color(0xffFFDD4F),
          size: 26,
        ),
        SizedBox(width: 6),
        Text('4.8', style: Styles.textStyle16),
        SizedBox(width: 6),
        Opacity(
          opacity: .5,
          child: Text('(2587)', style: Styles.textStyle14),
        ),
      ],
    );
  }
}
