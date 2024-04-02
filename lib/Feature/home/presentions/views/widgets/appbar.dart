import 'package:bookapp/core/utils/assets.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class AppBarCustom extends StatelessWidget {
  const AppBarCustom({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric( vertical: 40),
      child: Row(
        children: [
          Image.asset(
            AssetsData.logo,
            height: 20,
          ),
          const Spacer(),
          IconButton(onPressed: () {}, icon: const Icon(Iconsax.search_normal))
        ],
      ),
    );
  }
}
