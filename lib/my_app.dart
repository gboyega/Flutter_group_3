import 'package:flutter/material.dart';
import 'package:group3/home_page.dart';
import 'package:group3/screen3.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const SplashScreen2(title: "screen"),
    );
  }
}
