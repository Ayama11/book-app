import 'package:bookapp/Feature/home/presentions/views/widgets/app_bar_w.dart';
import 'package:bookapp/constes.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:iconsax/iconsax.dart';

class BookDetilesView extends StatelessWidget {
  const BookDetilesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
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
              ])
        ]),
      )),
    );
  }
}
