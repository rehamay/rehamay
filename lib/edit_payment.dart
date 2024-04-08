import 'package:flutter/material.dart';

class Edit_Payment extends StatelessWidget {
  const Edit_Payment({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar:
      AppBar(
        backgroundColor: Colors.blue,
        title: const Text(
          'Payment Methods',
          style: TextStyle(color: Colors.black87, fontSize: 30),
        ),
        centerTitle: true,
      ),
    );
  }
}
