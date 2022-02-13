// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:group3/components/rounded_shape.dart';

class ButtonWithSlider extends StatelessWidget {
  const ButtonWithSlider({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      child: Column(children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RoundedShape(color: Colors.yellow, width: 30, height: 10),
            SizedBox(
              width: 10,
            ),
            RoundedShape(color: Colors.black54, width: 10, height: 10),
            SizedBox(
              width: 10,
            ),
            RoundedShape(color: Colors.black54, width: 10, height: 10),
          ],
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.05,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            TextButton(
              onPressed: () {},
              child: Text("Skip"),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Colors.black54,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50),
                ),
              ),
              onPressed: () {},
              child: Text("Next"),
            ),
          ],
        )
      ]),
    );
  }
}
