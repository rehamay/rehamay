import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:remoo/introScreens/introPage1.dart';
import 'package:remoo/registerscreen.dart';
import 'package:remoo/users_schools.dart';

import 'forgetpass.dart';
class SignIn extends StatelessWidget {

  PageController _controller = PageController();

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
appBar: AppBar(
  leading: IconButton(onPressed: (){
    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) =>
                UserSchool()));
  },
      icon: Icon(Icons.arrow_circle_left_outlined))
),
        body: Padding(
        padding: const EdgeInsets.only(left: 25,right: 25,top: 10),
    child: Column(
    //logo
    children: [
    Padding(
    padding: const EdgeInsets.only(left: 80,right: 80,top: 0,),
    child: Image(image: AssetImage('images/logo2.png')),
    ),

      //sign in!

      Text('-----------  Sign in!  -----------',style: TextStyle(fontSize: 25,color: Colors.blue),),

      //email
      Align(
          alignment: Alignment.centerLeft,
          child: Padding(
            padding: const EdgeInsets.only(left: 20,top: 30),
            child: Text('Email',style: TextStyle(fontWeight: FontWeight.bold),),
          )),
      Container(

  child: Column(children: [
    //email
  Padding(

  padding: const EdgeInsets.symmetric(
    horizontal: 30,
  ),
  child: Container(
    decoration: BoxDecoration(
      color: const Color(0xFFF7F8F9),
      border: Border.all(
        color: const Color(0xFFE8ECF4),

      ),
      borderRadius: BorderRadius.circular(30),


    ),
    child: Padding(
        padding: const EdgeInsets.only(
          left: 10,
          right: 10,
        ),
        child:
    TextFormField(
      decoration: const InputDecoration(
        prefixIcon: Icon(Icons.email_outlined),
        suffix: Icon(
          Icons.email,
          color: Color(0xFF8391A1),),
        border: InputBorder.none,
        hintText: 'Enter your email',
        hintStyle: TextStyle(
          fontStyle: FontStyle.italic,
          color: Color(0XFFCDDDF9),
        ),
      ),
    ),

    )))

  ]),
),
      Align(
          alignment: Alignment.centerLeft,
          child: Padding(
            padding: const EdgeInsets.only(left: 20,),
            child: Text('Password ',style: TextStyle(fontWeight: FontWeight.bold),),
          )),
      Container(

        child: Column(children: [
          //email
          Padding(

              padding: const EdgeInsets.symmetric(
                  horizontal: 30,vertical: 10
              ),
              child: Container(
                  decoration: BoxDecoration(
                    color: const Color(0xFFF7F8F9),
                    border: Border.all(
                      color: const Color(0xFFE8ECF4),
                    ),
                    borderRadius: BorderRadius.circular(30),


                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(
                      left: 10,
                      right: 10,
                    ),
                    child:
                    TextFormField(
                      decoration: const InputDecoration(
                        prefixIcon: Icon(Icons.lock_open_outlined),
                        suffix: Icon(
                          Icons.remove_red_eye,
                          color: Color(0xFF8391A1),),
                        border: InputBorder.none,
                        hintText: 'Enter your password',
                        hintStyle: TextStyle(
                          fontStyle: FontStyle.italic,
                          color: Color(0XFFCDDDF9),

                        ),
                      ),

                    ),

                  )))

        ]),
      ),

      //forgot password
      Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 10,
        ),
        child: Align(
          alignment: Alignment.centerRight,
          child: GestureDetector(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) =>
                      const ForgotPass()));
            },
            child: const Text(
              "Forgot Password?",
              style: TextStyle(
                color: Colors.blue,
                decoration: TextDecoration.underline,
              ),
            ),
          ),
        ),
      ),

      //sign in button
      Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 40,
          vertical: 10,
        ),
        child: Row(
          children: [
            Expanded(
              child: MaterialButton(
                color: const Color(0xFFEFAEAC),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25),
                ),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                          IntroPage1()));
                },
                child: const Padding(
                  padding: EdgeInsets.all(15.0),
                  child: Text(
                    "Sign in",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),

//sign up button
      Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 40,
          vertical: 10,
        ),
        child: Row(
          children: [
            Expanded(
              child: MaterialButton(
                color: const Color(0XFFCDDDF9),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25),
                ),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              IntroPage1()));
                },
                child: const Padding(
                  padding: EdgeInsets.all(15.0),
                  child: Text(
                    "sign up",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),

    ],
    )
        ),
    );
  }
}


