import 'package:bookapp/Feature/home/presentions/views/widgets/app_bar_w.dart';
import 'package:bookapp/Feature/home/presentions/views/widgets/custom_book_item.dart';
import 'package:bookapp/constes.dart';
import 'package:bookapp/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:iconsax/iconsax.dart';

class BookDetilesView extends StatelessWidget {
  const BookDetilesView({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Padding(
        padding: kPadding30,
        child: Column(children: [
          AppBarW(
              backgroundColor: Colors.transparent,
              leadingiIcon: Icons.close,
              leadingOnPressed: () {
                GoRouter.of(context).pop();
              },
              actions: [
                IconButton(
                    onPressed: () {}, icon: const Icon(Iconsax.shopping_bag))
              ]),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: width * .2),
            child: const CustomBookItem(),
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
          )
        ]),
      ),
    );
  }
}
