import 'package:bookapp/constes.dart';
import 'package:flutter/material.dart';

import '../../../../../core/widgets/button_custom.dart';

class ActionButton extends StatelessWidget {
  const ActionButton({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: kPadding30,
      child: Row(
        children: [
          Expanded(
            child: ButtonCoustom(
              text: 'Read now',
              textColor: Colors.white,
              fontSize: 16,
              backColor: Color(0xffEF8262),
            ),
          ),
          SizedBox(width: 12),
          Expanded(
            child: ButtonCoustom(
              text: '20.6',
              textColor: Colors.black,
              fontSize: 16,
              backColor: Colors.white,
            ),
          )
        ],
      ),
    );
  }
}
