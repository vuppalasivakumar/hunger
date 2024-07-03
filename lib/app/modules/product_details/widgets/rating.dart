import 'package:flutter/material.dart';

class Rating extends StatelessWidget {
  final Color? color;
  const Rating({
    super.key,
    this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Icon(
      Icons.star,
      size: 15,
      color: color,
    );
  }
}
