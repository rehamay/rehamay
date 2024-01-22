import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'introPage3.dart';


class IntroPage1 extends StatelessWidget {
  PageController _controller = PageController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          appBarTheme: AppBarTheme(
              systemOverlayStyle: SystemUiOverlayStyle(
                  statusBarColor:Colors.blue,
                  statusBarBrightness: Brightness.dark
              )
          )
      ),
      debugShowCheckedModeBanner: false,

      home: Scaffold(

        appBar: AppBar(
          actions: [
            TextButton(onPressed: (){
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) =>
                       IntroPage3()));
            }, child: Text('skip'))
            ],
          backgroundColor: Colors.transparent,
        ),
        backgroundColor: Color(0XFFCDDDF9),
        body:

        Column(
          children:<Widget>[
            Expanded(
              flex: 2,
              child: Center(
                child: Text('About Us!',
                style: TextStyle(color: Colors.blue,
                fontSize: 32,
                ),
                ),
              ),
            ),
            Expanded(
              flex: 5,
                child: Image(image: AssetImage('images/girls.png'),)),
            const Divider(
              height: 10,
              color: Colors.transparent,),
            Expanded(
              flex: 4,
                child: AspectRatio(
                  aspectRatio: 3/3,
                    child: Text('Our application streamlines the school registration process, providing students and parents with the convenience of selecting and registering for any desired school through a user-friendly interface. Simplifying the decision-making, it offers a seamless experience for both students and parents, making school selection and enrollment straightforward',
                                    style: TextStyle(fontSize: 12,
                                    ),textAlign: TextAlign.center,
                        maxLines: 10,
                      ),
                  ),
                ),

          ],
          mainAxisAlignment: MainAxisAlignment.center,
        ),
      ),
    );
  }
}
