import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:remoo/signIN.dart';
import 'introScreens/introPage3.dart';
import 'package:remoo/signinschool.dart';


class UserSchool extends StatelessWidget {
  const UserSchool({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color(0XFFCDDDF9),
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          leading: IconButton(onPressed: (){
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) =>
                        IntroPage3()));
          },
              icon: Icon(Icons.arrow_circle_left_outlined)),
        ),


        body: Column(
          children: [
            Expanded(flex: 6,
              child: Center(
                child:
                Padding(
                  padding: const EdgeInsets.only(top: 155,),
                  child: Container(
                    width: 150,
                    height: 60,
                    decoration: BoxDecoration(
                      color: Colors.grey.shade100,
                      borderRadius: BorderRadius.circular(30),
                      boxShadow:
                      [
                        BoxShadow
                          (color:
                        Colors.white10,
                          spreadRadius: 1,
                          blurRadius: 10,
                          offset: Offset(-4,-4),
                        ),
                        BoxShadow(
                          color:
                          Colors.grey.shade200,
                          spreadRadius: 3,
                          blurRadius: 10,
                          offset: Offset(4, 4),
                        )
                      ],
                    ),
                      child:Center(child: GestureDetector(
                          onTap: (){
                            Navigator.push(context,MaterialPageRoute(builder: (context){
                              return SignIn();
                            },
                            ),
                            );
                          },
                          child: Text('user',style: TextStyle(
                              fontSize: 20,
                              color: Colors.blue.shade500,
                              fontWeight: FontWeight.w700),)))
                  ),
                ),
              ),
            ),
            Spacer(flex: 1,),

            Container(
                width: 150,
                height: 60,
                decoration: BoxDecoration(
                  color: Colors.grey.shade100,
                  borderRadius: BorderRadius.circular(30),
                  boxShadow:
                  [
                    BoxShadow
                      (color:
                    Colors.white10,
                      spreadRadius: 1,
                      blurRadius: 10,
                      offset: Offset(-4,-4),
                    ),
                    BoxShadow(
                      color:
                      Colors.grey.shade200,
                      spreadRadius: 3,
                      blurRadius: 10,
                      offset: Offset(4, 4),
                    )
                  ],
                ),
                child:Center(child: GestureDetector(
                    onTap: (){
                      Navigator.push(context,MaterialPageRoute(builder: (context){
                        return SignInSchool();
                      },
                      ),
                      );
                    },
                    child: Text('School',style: TextStyle(
                        fontSize: 20,
                        color: Colors.blue.shade500,
                        fontWeight: FontWeight.w700),)))
            ),
            Spacer(flex: 8,),
          ],
        ),
      ),
    );
  }
}


