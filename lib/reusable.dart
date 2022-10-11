import 'package:flutter/material.dart';

class Reusable extends StatelessWidget {
  final Widget cardchild;
  final VoidCallback onpress;
  Reusable({required this.cardchild, required this.onpress});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onpress,
      child: Container(
        margin: EdgeInsets.all(15.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: cardchild,
      ),
    );
  }
}
