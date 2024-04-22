// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class CustomErroMessage extends StatelessWidget {
  const CustomErroMessage({super.key, required this.errMessage});

  final String errMessage;
  @override
  Widget build(BuildContext context) {
    return Center(child: Text(errMessage));
  }
}
