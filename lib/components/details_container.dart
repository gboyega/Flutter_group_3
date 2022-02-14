import 'package:flutter/material.dart';
import 'package:group3/components/buttons_with_slider.dart';

class DetailsBox extends StatelessWidget {
  final String titleText;
  final String subText;
  final int page;
  final Function onPress;

  const DetailsBox({
    Key? key,
    required this.titleText,
    required this.subText,
    required this.page,
    required this.onPress,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(
        minHeight: MediaQuery.of(context).size.height * 0.2,
        minWidth: double.infinity,
      ),
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
            height: 30,
          ),
          Text(
            subText,
            style: const TextStyle(
              fontSize: 15,
            ),
            textAlign: TextAlign.center,
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
}
