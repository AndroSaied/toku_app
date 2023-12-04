
import 'package:flutter/material.dart';


// ignore: must_be_immutable
class Category extends StatelessWidget {
 Category({super.key, this.color, this.text, this.onTap});

  Color? color;
  String? text;
  VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.only(left: 15),
        alignment: Alignment.centerLeft,
        height: 65,
        width: double.infinity,
        color: color,
        child: Text(text!, style: const TextStyle(
          fontSize: 18,
          color: Colors.white
          ),),
      ),
    );
  }
}