// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, must_be_immutable

import 'package:flutter/material.dart';
import 'package:group3/components/rounded_shape.dart';

class ButtonWithSlider extends StatefulWidget {
  ButtonWithSlider({Key? key, required this.activeNumber}) : super(key: key);
  int activeNumber;

  @override
  _ButtonWithSliderState createState() => _ButtonWithSliderState();
}

class _ButtonWithSliderState extends State<ButtonWithSlider> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      child: Column(children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RoundedShape(
              color: widget.activeNumber == 1 ? Colors.yellow : Colors.black54,
              active: widget.activeNumber == 1 ? true : false,
            ),
            SizedBox(
              width: 10,
            ),
            RoundedShape(
              color: widget.activeNumber == 2 ? Colors.yellow : Colors.black54,
              active: widget.activeNumber == 2 ? true : false,
            ),
            SizedBox(
              width: 10,
            ),
            RoundedShape(
              color: widget.activeNumber == 3 ? Colors.yellow : Colors.black54,
              active: widget.activeNumber == 3 ? true : false,
            ),
          ],
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.05,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            TextButton(
              style: TextButton.styleFrom(
                primary: Colors.black38,
              ),
              onPressed: () {},
              child: Text(
                "Skip",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
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
