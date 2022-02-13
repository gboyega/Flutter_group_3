import 'package:flutter/material.dart';
import 'package:group3/components/appbar.dart';
import 'package:group3/components/details_container.dart';

class ScreenThree extends StatefulWidget {
  const ScreenThree({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<ScreenThree> createState() => _ScreenThreeState();
}

class _ScreenThreeState extends State<ScreenThree> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage("images/ScreenThree.jpg"),
          fit: BoxFit.fill,
        ),
      ),
      child: Scaffold(
          backgroundColor: Colors.transparent,
          appBar: BaseAppBar(appBar: AppBar()),
          body: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.5,
                ),
                detailsBox(
                    context,
                    "Let's go...",
                    "Get the new fitness updates everyday & improve performance",
                    3,
                    () {})
              ],
            ),
          )),
    );
  }
}
