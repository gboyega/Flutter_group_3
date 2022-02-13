import 'package:flutter/material.dart';
import 'package:group3/components/buttons_with_slider.dart';

Container detailsBox(BuildContext context, String titleText, String subText,
    int page, Function onPress) {
  return Container(
    constraints: const BoxConstraints(
        minHeight: 700, minWidth: double.infinity, maxHeight: 1000),
    padding: const EdgeInsets.symmetric(horizontal: 30),
    decoration: const BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(50),
        topRight: Radius.circular(50),
      ),
    ),
    child: Column(
      children: [
        const SizedBox(
          height: 30,
        ),
        Text(
          titleText,
          style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 40),
        ),
        const SizedBox(
          height: 20,
        ),
        Center(
          child: Text(
            subText,
          ),
        ),
        const SizedBox(
          height: 30,
        ),
        ButtonWithSlider(
          activeNumber: page,
          onPress: onPress,
        ),
        const SizedBox(
          height: 30,
        ),
      ],
    ),
  );
}
