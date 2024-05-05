import 'package:bookapp/Feature/home/data/models/book/book.dart';
import 'package:bookapp/constes.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../../../core/widgets/button_custom.dart';

class ActionButton extends StatelessWidget {
  const ActionButton({super.key, required this.book});
  final Book book;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: kPadding30,
      child: Row(
        children: [
          Expanded(
            child: ButtonCoustom(
              text: 'Read now',
              textColor: Colors.white,
              fontSize: 16,
              backColor: const Color(0xffEF8262),
              onPressed: () async {
                Uri url = Uri.parse(book.volumeInfo.previewLink!);
                if (await canLaunchUrl(url)) {
                  await launchUrl(url);
                }
              },
            ),
          ),
          const SizedBox(width: 12),
          const Expanded(
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
