import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:remoo/parent/forget2.dart';
import 'forget_pass2.dart';

class ResetPass1 extends StatefulWidget {
  const ResetPass1({super.key});

  @override
  State<ResetPass1> createState() => _ResetPassState();
}

class _ResetPassState extends State<ResetPass1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true, // Extend body behind the app bar
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.transparent, // Make app bar background transparent
        leading: IconButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => ForgotPass(),
              ),
            );
          },
          icon: Icon(Icons.arrow_circle_left_outlined),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 25, right: 25, top: 100),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 80, right: 80, top: 30),
                child: Image(image: AssetImage('images/logo2.png')),
              ),
              SizedBox(height: 30),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  '--------- Reset Password ---------',
                  style: TextStyle(fontSize: 20, color: Colors.blue),
                ),
              ),
              SizedBox(height: 20),
              // Email
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: const EdgeInsets.only(left: 40),
                  child: Text(
                    'Email',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              SizedBox(height: 5),
              Container(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 30),
                      child: Container(
                        decoration: BoxDecoration(
                          color: const Color(0xFFF7F8F9),
                          border: Border.all(color: const Color(0xFFE8ECF4)),
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 10, right: 10),
                          child: TextFormField(
                            decoration: const InputDecoration(
                              prefixIcon: Icon(Icons.email_outlined),
                              suffix: Icon(Icons.email, color: Color(0xFF8391A1)),
                              border: InputBorder.none,
                              hintText: 'Enter your email',
                              hintStyle: TextStyle(
                                fontStyle: FontStyle.italic,
                                color: Color(0XFFCDDDF9),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 30),
              // Send Password Reset Button
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 40),
                child: MaterialButton(
                  color: const Color(0XFFCDDDF9),
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ForgotPass2(),
                      ),
                    );
                  },
                  child: Padding(
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
      ),
    );
  }
}
