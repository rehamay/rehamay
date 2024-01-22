
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:remoo/onboardingScreen.dart';
import 'package:remoo/registerscreen.dart';
import 'package:remoo/signIN.dart';

class Welcome extends StatelessWidget {
  const Welcome({super.key});


  @override
  Widget build(BuildContext context) {
    theme: ThemeData(
        appBarTheme: AppBarTheme(
            systemOverlayStyle: SystemUiOverlayStyle(
                statusBarColor:Colors.blue,
                statusBarBrightness: Brightness.dark
            )
        )
    );
    return Scaffold(

      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [

            Padding(
              padding: const EdgeInsets.only(top:150,left: 20),
              child: Image.asset(
                "images/logoo1.png",
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(height: 25),
            //login button
           Center(child: Text('Welcome to',style: TextStyle(fontSize: 35,fontWeight: FontWeight.bold),)),
           Divider(thickness: 0,color: Colors.transparent),
            Text('online admission',style: TextStyle(fontWeight: FontWeight.bold),)

          ],
    )
            )




    );

  }
}
