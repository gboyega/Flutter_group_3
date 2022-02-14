import 'package:flutter/material.dart';
import 'package:group3/components/appbar.dart';
import 'package:group3/components/details_container.dart';

class ScreenTwo extends StatefulWidget {
  const ScreenTwo({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<ScreenTwo> createState() => _ScreenTwoState();
}

class _ScreenTwoState extends State<ScreenTwo> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage("images/ScreenTwo.jpg"),
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
                DetailsBox(
                  titleText: "Customize",
                  subText:
                      "Feel free to adjust your diet & workout settings according to your comfort",
                  page: 2,
                  onPress: () {
                    Navigator.pushNamed(context, '/screen3');
                  },
                ),
              ],
            ),
          )),
    );
  }
}
