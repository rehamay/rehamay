import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class IntroPage3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Set status bar color to transparent
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.light,
      systemNavigationBarColor: Colors.transparent,
      systemNavigationBarIconBrightness: Brightness.light,
    ));

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0, // Remove app bar shadow
      ),
      extendBodyBehindAppBar: true, // Extend body behind app bar
      body: Stack(
        children: [
          Positioned.fill(
            child: Image(
              image: AssetImage('images/Picture3.png'),
              fit: BoxFit.cover,
            ),
          ),
        ],
      ),
    );
  }
}
