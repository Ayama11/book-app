import 'package:bookapp/core/utils/assets.dart';
import 'package:flutter/material.dart';

class ItemListView extends StatelessWidget {
  const ItemListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .3,
      child: AspectRatio(
        aspectRatio: 2.7 / 4,
        child: Container(
          
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              color: Colors.amber,
              image: const DecorationImage(
                  fit: BoxFit.fill, image: AssetImage(AssetsData.test))),
        ),
      ),
    );
  }
}
