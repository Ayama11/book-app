import 'package:flutter/material.dart';

import 'custom_book_item.dart';

class FeaturdBookListView extends StatelessWidget {
  const FeaturdBookListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .25,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (BuildContext context, int index) {
          return const Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: CustomBookItem(),
          );
        },
      ),
    );
  }
}
