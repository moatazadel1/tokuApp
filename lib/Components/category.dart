import 'package:flutter/material.dart';

class Category extends StatelessWidget {
  final String? text;
  final Color? color;
  final void Function()? onTap;
  const Category({super.key, this.color, this.text, this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        alignment: Alignment.centerLeft,
        padding: const EdgeInsets.only(left: 15),
        color: color,
        width: double.infinity,
        height: 65,
        child: Text(
          text!,
          style: const TextStyle(color: Colors.white, fontSize: 20),
        ),
      ),
    );
  }
}
