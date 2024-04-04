import 'package:bookapp/Feature/home/presentions/views/widgets/custom_book_item.dart';
import 'package:flutter/material.dart';

class SimilerBookListView extends StatelessWidget {
  const SimilerBookListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .15,
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
