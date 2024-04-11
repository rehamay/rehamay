import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:remoo/parent/signIN.dart';

class ForgotPass2 extends StatefulWidget {
  const ForgotPass2({Key? key}) : super(key: key);

  @override
  State<ForgotPass2> createState() => _ForgotPassState();
}

class _ForgotPassState extends State<ForgotPass2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => SignIn(),
              ),
            );
          },
          icon: Icon(Icons.arrow_circle_left_outlined),
        ),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.only(top: 40), // Add padding to push the content down
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 80),
                child: Image(image: AssetImage('images/logo2.png')),
              ),
              SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.only(left: 25),
                child: Text(
                  '--------- Reset Password ---------',
                  style: TextStyle(fontSize: 20, color: Colors.blue),
                ),
              ),
              SizedBox(height: 20),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: const EdgeInsets.only(left: 40),
                  child: Text('Password', style: TextStyle(fontWeight: FontWeight.bold)),
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
                          child: TextFormField(

                            decoration: const InputDecoration(
                              prefixIcon: Icon(Icons.lock_outline), // Change icon to password
                              suffixIcon: Icon(
                                Icons.visibility_off, // Change icon to password visibility
                                color: Color(0xFF8391A1),
                              ),
                              border: InputBorder.none,
                              hintText: 'Enter your password', // Change hint text
                              hintStyle: TextStyle(
                                fontStyle: FontStyle.italic,
                                color: Color(0XFFCDDDF9),
                              ),
                            ),
                            obscureText: true, // Set obscureText to true for password field
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: const EdgeInsets.only(left: 40),
                  child: Text('Confirm Password', style: TextStyle(fontWeight: FontWeight.bold)),
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
                          child: TextFormField(
                            decoration: const InputDecoration(
                              prefixIcon: Icon(Icons.lock_outline), // Change icon to password
                              suffixIcon: Icon(
                                Icons.visibility_off, // Change icon to password visibility
                                color: Color(0xFF8391A1),
                              ),
                              border: InputBorder.none,
                              hintText: 'Confirm your password', // Change hint text
                              hintStyle: TextStyle(
                                fontStyle: FontStyle.italic,
                                color: Color(0XFFCDDDF9),
                              ),
                            ),
                            obscureText: true, // Set obscureText to true for password field
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 40),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 40),
                child: MaterialButton(
                  color: const Color(0XFFCDDDF9),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => SignIn(),
                      ),
                    );
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
      ),
    );
  }
}
