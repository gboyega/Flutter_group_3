import 'package:flutter/material.dart';
import 'package:group3/components/appbar.dart';
import 'package:group3/components/details_container.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage("images/ScreenOne.jpg"),
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
                  height: MediaQuery.of(context).size.height / 2,
                ),
                detailsBox(
                    context,
                    "Welcome!",
                    "Explore the all new way to build your fitness and find the perfect fit for you",
                    1,
                    () {})
              ],
            ),
          )),
    );
  }
}
