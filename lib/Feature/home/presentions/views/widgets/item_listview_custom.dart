import 'package:bookapp/core/utils/assets.dart';
import 'package:flutter/material.dart';

class FeaturdItemListView extends StatelessWidget {
  const FeaturdItemListView({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2.8 / 4,
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            color: Colors.amber,
            image: const DecorationImage(
                fit: BoxFit.fill, image: AssetImage(AssetsData.test))),
      ),
    );
  }
}
