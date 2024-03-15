import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Welcome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: FractionallySizedBox(
                alignment: Alignment.topCenter,
                child: Padding(
                  padding: const EdgeInsets.only(top:150,left: 20),
                  child: Image.asset(
                    "images/logoo1.png",
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20),
            Expanded(
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                        'Welcome to',
                        style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
                      ),

                    Divider(thickness: 0, color: Colors.transparent),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 150),
                      child: Text(
                        'online admission',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}