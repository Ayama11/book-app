import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class TextFieldCustom extends StatelessWidget {
  const TextFieldCustom({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        hintText: 'Search',
        suffixIcon: IconButton(
            onPressed: () {}, icon: const Icon(Iconsax.search_normal)),
        enabledBorder: outLineInputBorder(),
        focusedBorder: outLineInputBorder(),
      ),
    );
  }

  OutlineInputBorder outLineInputBorder() {
    return OutlineInputBorder(
      borderSide: const BorderSide(color: Colors.white),
      borderRadius: BorderRadius.circular(24),
    );
  }
}
