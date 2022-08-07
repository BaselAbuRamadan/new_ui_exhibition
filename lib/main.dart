import 'package:flutter/material.dart';
import 'package:new1/ui/Slider/slider.dart';
// import 'package:welcom_login/Constants.dart';

void main()=>runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Auth',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
         fontFamily: "IBMPlexSans"

      ),
      home: IntroductionPage(),
    );
  }
}
