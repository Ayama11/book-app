import 'package:flutter/material.dart';

import 'appbar.dart';

class BodyHomeView extends StatelessWidget {
  const BodyHomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [AppBarCustom()],
    );
  }
}
