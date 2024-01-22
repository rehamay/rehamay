import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:remoo/forgetpass.dart';

class ResetPass extends StatefulWidget {
  const ResetPass({super.key});

  @override
  State<ResetPass> createState() => _ResetPassState();
}

class _ResetPassState extends State<ResetPass> {
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
                      ForgotPass()));
        },
            icon: Icon(Icons.arrow_circle_left_outlined)),
      ),
      body: Padding(
          padding: const EdgeInsets.only(left: 25,right: 25,top: 10),
          child: Column(
            //logo
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 80,right: 80,top: 30,),
                child: Image(image: AssetImage('images/logo2.png')),
              ),

              //sign in!

              Text('--------- Reset Password ---------',style: TextStyle(fontSize: 20,color: Colors.blue),),


              ///////////////////list ////matnse44444///////
              Column(
                children: [
                  //email
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 40,),
                        child: Text('Email',style: TextStyle(fontWeight: FontWeight.bold),),
                      )),
                  Divider(color: Colors.transparent),
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
                        padding: const EdgeInsets.only(left: 40,),
                        child: Text('Email',style: TextStyle(fontWeight: FontWeight.bold),),
                      )),
                  Divider(color: Colors.transparent),
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

//sign up button
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 40,
                      vertical: 40,
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

                            },
                            child: const Padding(
                              padding: EdgeInsets.all(15.0),
                              child: Text(
                                "Send Password Reset",
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




    ]))
    );
  }
}
