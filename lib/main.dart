import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'onboardingScreen.dart';
import 'package:remoo/welcome.dart';

void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/paymentmethod',
      routes: {
        'welcome':((context)=> Welcome()),
      },
      home: OnBoardingScreen(),
    );

  }
}