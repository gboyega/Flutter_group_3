import 'package:flutter/material.dart';

Container detailsBox(BuildContext context) {
  return Container(
    width: double.infinity,
    height: MediaQuery.of(context).size.height * 0.55,
    padding: EdgeInsets.symmetric(horizontal: 30),
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(50),
        topRight: Radius.circular(50),
      ),
    ),
    child: Column(
      children: [
        SizedBox(
          height: 20,
        ),
        Text("Let's Go ....."),
        SizedBox(
          height: 20,
        ),
        Text(
          "",
        )
      ],
    ),
  );
}
