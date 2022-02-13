import 'package:flutter/material.dart';

class RoundedShape extends StatelessWidget {
  RoundedShape(
      {Key? key, required this.color, this.width = 10, this.active = false})
      : super(key: key);
  final Color color;
  double width;
  bool active;

  @override
  Widget build(BuildContext context) {
    if (active) {
      width = 30;
    }

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
