import 'package:bookapp/core/utils/assets.dart';
import 'package:flutter/material.dart';

import 'appbar.dart';
import 'item_listview_custom.dart';

class BodyHomeView extends StatelessWidget {
  const BodyHomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        AppBarCustom(),
        SizedBox(height: 10),
        ItemListView(),
      ],
    );
  }
}
