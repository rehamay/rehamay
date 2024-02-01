

import 'package:flutter/material.dart';
import 'package:remoo/introScreens/introPage1.dart';
import 'package:remoo/introScreens/introPage2.dart';
import 'package:remoo/introScreens/introPage3.dart';
import 'package:remoo/welcome.dart';
import 'package:remoo/users_schools.dart';

import 'package:smooth_page_indicator/smooth_page_indicator.dart';



class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({super.key});

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  PageController _controller = PageController();

  bool onLastPage =false;

  @override
  Widget build(BuildContext context) {

    return Scaffold(

      body: Stack(
        children:[
          PageView(
            onPageChanged: (index){
              setState(() {
                onLastPage=(index==3);
              });
            },
          controller: _controller,
          children: [
            Welcome(),
            IntroPage1(),
            IntroPage2(),
            IntroPage3(),
          ],
        ),
          Container(
            alignment: Alignment(0, 0.95),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GestureDetector(
                      onTap: (){
                        _controller.previousPage(duration: Duration(milliseconds: 500), curve: Curves.easeIn,);
                      },
                      child:
                          //back
                      Icon(Icons.arrow_circle_left_outlined,color: Colors.blue,size: 30,)),
                  SmoothPageIndicator(controller: _controller, count: 4,
                    effect:
                  SlideEffect(
                      dotHeight: 12,
                      dotWidth: 12,
                      paintStyle: PaintingStyle.fill,
                      dotColor: Color(0xff90c4e8),
                      activeDotColor: Colors.blue),
                  ),

                  //next OR done
                  onLastPage?

                  GestureDetector(
                    onTap: (){
                      Navigator.push(context,MaterialPageRoute(builder: (context){
                        return UserSchool();
                      },
                      ),
                      );
                    },
                      child:
                     Icon(Icons.check_circle_outline,color: Colors.blue,size: 30,),)

                      : GestureDetector(
                    onTap: (){
                      _controller.nextPage(duration: Duration(milliseconds: 500), curve: Curves.easeIn,);
                    },
                    child:
                    Icon(Icons.arrow_circle_right_outlined,color: Colors.blue,size: 30,),),


                ],
              ),
          ),
        ]

      ),

    );
  }
}



