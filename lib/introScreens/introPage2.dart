import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'introPage3.dart';

class IntroPage2 extends StatelessWidget {
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
  backgroundColor: Color(0XFFCDDDF9),
          actions: [
            TextButton(onPressed: (){
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) =>
                          IntroPage3()));
            }, child: Text('skip'))
          ],
        ),

        body:
        Stack(
          children: [ClipPath(
            clipper:BigClipper(),
        child: Container(color: Color(0XFFCDDDF9),),
        ),
            Align(
                   alignment:Alignment(-0.70,-1.0) ,
                   child: Padding(
                     padding: const EdgeInsets.only(right: 70,bottom: 50,top: 0,left: 30),
                     child:
                     Image(image: AssetImage('images/logoo1.png'))),
                   ),
            Align(
              alignment:Alignment(-0.90,-0.65) ,
              child: Text('school admission',
                style: TextStyle(color: Color(0xff2d9aff),fontSize: 27,fontWeight: FontWeight.bold),),
            ),
            const Divider(
              height: 295,
              thickness: 2,
              indent: 20,
              endIndent: 150,
              color: Colors.white,),
            Align(
                alignment: Alignment(-0.90,-0.50),
                child: Text('Professional App for your'
                    ' online admission',style: TextStyle(fontSize: 11,color: Color(0xff2d9aff)),)),
            Padding(padding: EdgeInsets.only(left: 70,top: 40),
              child: Column(
                children:
                [ Image(image: AssetImage('images/papper.png',),
                width: 200,
                  height: 155,
                ),],
                mainAxisAlignment: MainAxisAlignment.center,
              ),
            ),
            Column(

              children: [
                Expanded(
                  flex: 3,
                  child: Align(
                    alignment: Alignment(0.50,0.55),
                    child: Padding(padding: EdgeInsets.only(left: 50,right: 50),
                      child: Text('Admission online refers to the streamlined digital method of applying for enrollment in an educational institution, involving the submission of documents and completion of requirements through online platforms',
                      style: TextStyle(fontSize: 12,),
                        maxLines: 8,textAlign: TextAlign.center),
                    ),
                  ),
                ),
              ],
              mainAxisAlignment: MainAxisAlignment.end,
            ),
          ]
        ),
              ),
    );
    }
  }


class BigClipper extends CustomClipper<Path>{
  @override
  Path getClip(Size size) {
    Path path = Path();
    final double _xScaling = size.width / 414;
    final double _yScaling = size.height / 896;
    path.lineTo(-0.003999999999997783 * _xScaling,341.78499999999997 * _yScaling);
    path.cubicTo(-0.003999999999997783 * _xScaling,341.78499999999997 * _yScaling,23.461000000000002 * _xScaling,363.15099999999995 * _yScaling,71.553 * _xScaling,363.15099999999995 * _yScaling,);
    path.cubicTo(119.645 * _xScaling,363.15099999999995 * _yScaling,142.21699999999998 * _xScaling,300.186 * _yScaling,203.29500000000002 * _xScaling,307.21 * _yScaling,);
    path.cubicTo(264.373 * _xScaling,314.234 * _yScaling,282.666 * _xScaling,333.47299999999996 * _yScaling,338.408 * _xScaling,333.47299999999996 * _yScaling,);
    path.cubicTo(394.15000000000003 * _xScaling,333.47299999999996 * _yScaling,413.99600000000004 * _xScaling,254.199 * _yScaling,413.99600000000004 * _xScaling,254.199 * _yScaling,);
    path.cubicTo(413.99600000000004 * _xScaling,254.199 * _yScaling,413.99600000000004 * _xScaling,0 * _yScaling,413.99600000000004 * _xScaling,0 * _yScaling,);
    path.cubicTo(413.99600000000004 * _xScaling,0 * _yScaling,-0.003999999999976467 * _xScaling,0 * _yScaling,-0.003999999999976467 * _xScaling,0 * _yScaling,);
    path.cubicTo(-0.003999999999976467 * _xScaling,0 * _yScaling,-0.003999999999997783 * _xScaling,341.78499999999997 * _yScaling,-0.003999999999997783 * _xScaling,341.78499999999997 * _yScaling,);
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper oldClipper) {
    // TODO: implement shouldReclip
    throw UnimplementedError();
  }
}
class SmallClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    final double _xScaling = size.width / 414;
    final double _yScaling = size.height / 896;
    path.lineTo(-0.003999999999997783 * _xScaling, 217.841 * _yScaling);
    path.cubicTo(
      -0.003999999999997783 * _xScaling, 217.841 * _yScaling, 19.14 * _xScaling,
      265.91999999999996 * _yScaling, 67.233 * _xScaling,
      265.91999999999996 * _yScaling,);
    path.cubicTo(
      115.326 * _xScaling, 265.91999999999996 * _yScaling, 112.752 * _xScaling,
      234.611 * _yScaling, 173.83299999999997 * _xScaling,
      241.635 * _yScaling,);
    path.cubicTo(234.914 * _xScaling, 248.659 * _yScaling, 272.866 * _xScaling,
      301.691 * _yScaling, 328.608 * _xScaling, 301.691 * _yScaling,);
    path.cubicTo(384.34999999999997 * _xScaling, 301.691 * _yScaling,
      413.99600000000004 * _xScaling, 201.977 * _yScaling,
      413.99600000000004 * _xScaling, 201.977 * _yScaling,);
    path.cubicTo(413.99600000000004 * _xScaling, 201.977 * _yScaling,
      413.99600000000004 * _xScaling, 0 * _yScaling,
      413.99600000000004 * _xScaling, 0 * _yScaling,);
    path.cubicTo(413.99600000000004 * _xScaling, 0 * _yScaling,
      -0.003999999999976467 * _xScaling, 0 * _yScaling,
      -0.003999999999976467 * _xScaling, 0 * _yScaling,);
    path.cubicTo(-0.003999999999976467 * _xScaling, 0 * _yScaling,
      -0.003999999999997783 * _xScaling, 217.841 * _yScaling,
      -0.003999999999997783 * _xScaling, 217.841 * _yScaling,);
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper oldClipper) {
    // TODO: implement shouldReclip
    throw UnimplementedError();
  }
}