import 'package:bookapp/Feature/home/presentions/views/widgets/similer_book_listview.dart';
import 'package:bookapp/core/utils/styles.dart';
import 'package:flutter/material.dart';

class SectionSimilerBookListView extends StatelessWidget {
  const SectionSimilerBookListView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Similer you can see', style: Styles.textStyle16),
        SizedBox(height: 24),
        SimilerBookListView()
      ],
    );
  }
}
