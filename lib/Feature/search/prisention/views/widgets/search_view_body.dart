import 'package:bookapp/Feature/search/prisention/views/widgets/textfield_custom.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [TextFieldCustom()],
    );
  }
}
