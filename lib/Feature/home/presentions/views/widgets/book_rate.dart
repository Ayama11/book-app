import 'package:bookapp/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class BookRate extends StatelessWidget {
  const BookRate({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Icon(
          Iconsax.star1,
          color: Color(0xffFFDD4F),
          size: 26,
        ),
        const SizedBox(width: 6),
        const Text('4.8', style: Styles.textStyle16),
        const SizedBox(width: 6),
        Text(
          '(2587)',
          style: Styles.textStyle14.copyWith(color: const Color(0xff707070)),
        )
      ],
    );
  }
}
