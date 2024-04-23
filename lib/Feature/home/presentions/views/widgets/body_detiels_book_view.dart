import 'package:bookapp/Feature/home/data/models/book/book.dart';
import 'package:bookapp/Feature/home/presentions/views/widgets/section_book_detiles.dart';
import 'package:bookapp/Feature/home/presentions/views/widgets/section_similer_book.dart';
import 'package:bookapp/constes.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:iconsax/iconsax.dart';

import 'app_bar_w.dart';

class DetilesBookBody extends StatelessWidget {
  const DetilesBookBody({super.key, required this.book});

  final Book book;
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
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
                        onPressed: () {},
                        icon: const Icon(Iconsax.shopping_bag))
                  ]),
              const SizedBox(height: 20),
              BookDetilesSection(
                book: book,
              ),
              const Expanded(child: SizedBox(height: 24)),
              const SectionSimilerBookListView(),
              const SizedBox(height: 46),
            ]),
          ),
        )
      ],
    );
  }
}
