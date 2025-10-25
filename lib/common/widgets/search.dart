import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class Searchbar extends StatelessWidget {
  const Searchbar({
    super.key, 
    required this.hintText,
  });

  final String hintText;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: TextField(
        decoration: InputDecoration(
          hintText: hintText,
          border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(3))),
          suffixIcon: Icon(Iconsax.search_normal)
        ),

      )
    );
  }
}