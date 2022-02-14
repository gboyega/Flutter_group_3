import 'package:flutter/material.dart';
import 'package:group3/home_page.dart';
import 'package:group3/screen2.dart';
import 'package:group3/screen3.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your appliscation.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: "screen"),
      routes: {
        '/home': (context) => MyHomePage(title: "home_page"),
        '/screen2': (context) => ScreenTwo(title: "screen2"),
        '/screen3': (context) => ScreenThree(title: "screen3"),
      },
    );
  }
}
