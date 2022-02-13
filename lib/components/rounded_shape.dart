import 'package:flutter/material.dart';

class RoundedShape extends StatelessWidget {
  const RoundedShape(
      {Key? key,
      required this.color,
      required this.height,
      required this.width})
      : super(key: key);
  final Color color;
  final double width;
  final double height;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: 10,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: color,
      ),
    );
  }
}
