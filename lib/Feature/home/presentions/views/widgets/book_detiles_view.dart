import 'package:bookapp/Feature/home/presentions/views/widgets/app_bar_w.dart';
import 'package:bookapp/Feature/home/presentions/views/widgets/section_book_detiles.dart';
import 'package:bookapp/Feature/home/presentions/views/widgets/section_similer_book.dart';
import 'package:bookapp/constes.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:iconsax/iconsax.dart';

class BookDetilesView extends StatelessWidget {
  const BookDetilesView({super.key});

  @override
  Widget build(BuildContext context) {
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
          const SizedBox(height: 20),
          const BookDetilesSection(),
          const SizedBox(height: 24),
          const SectionSimilerBookListView()
        ]),
      ),
    );
  }
}
