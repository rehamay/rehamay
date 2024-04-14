import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:image_picker/image_picker.dart';
import 'package:remoo/school/home_page_sch.dart';
import 'package:remoo/school/photo_video.dart';

class Sch_Profile extends StatelessWidget {
  const Sch_Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.transparent, // Make app bar background transparent
        leading: IconButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const Home_Page(), // Navigate back to SignIn widget
              ),
            );
          },
          icon: const Icon(Icons.arrow_circle_left_outlined),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 10), // Add space between app bar and profile image
              const Align(
                alignment: Alignment.center,
                child: Padding(
                  padding: EdgeInsets.only(bottom: 14), // Adjust top padding as needed
                  child: Text(
                    'Profile',
                    style: TextStyle(fontSize: 40, color: Colors.blue, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              const SizedBox(height: 10), // Add space between profile image and text

              Center(
                child: Stack(
                  children: [
                    Container(
                      width: 130,
                      height: 130,
                      decoration: BoxDecoration(
                        border: Border.all(
                          width: 4,
                          color: Theme.of(context).scaffoldBackgroundColor,
                        ),
                        boxShadow: [
                          BoxShadow(
                            spreadRadius: 2,
                            blurRadius: 10,
                            color: Colors.black.withOpacity(0.1),
                            offset: const Offset(0, 10),
                          )
                        ],
                        shape: BoxShape.circle,
                        image: const DecorationImage(
                          fit: BoxFit.cover,
                          image: NetworkImage("https://img.freepik.com/premium-vector/education-school-logo-design_586739-1335.jpg?w=740"),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              const Align(
                alignment: Alignment.center,
                child: Padding(
                  padding: EdgeInsets.only(bottom: 14), // Adjust top padding as needed
                  child: Text(
                    'Name',
                    style: TextStyle(fontSize: 20, color: Colors.black87, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              const SizedBox(height: 50), // Add space between profile image and titles with icons
              GestureDetector(
                onTap: () {},
                child: const ListTile(
                  leading: Icon(Icons.person, color: Colors.black),
                  title: Text(
                    "Application Submitted",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                    ),
                  ),
                  trailing: Icon(Icons.arrow_forward_ios),
                ),
              ),

              const Divider(color: Colors.black87),

              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const Photo(),
                    ),
                  );
                },
                child: const ListTile(
                  leading: Icon(Icons.photo, color: Colors.black),
                  title: Text(
                    "Add Photo",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                    ),
                  ),
                  trailing: Icon(Icons.arrow_forward_ios),
                ),
              ),
              const Divider(color: Colors.black87),

              GestureDetector(
                onTap: () {},
                child: const ListTile(
                  leading: Icon(Icons.payment, color: Colors.black),
                  title: Text(
                    "Payment Method",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                    ),
                  ),
                  trailing: Icon(Icons.arrow_forward_ios),
                ),
              ),

              const Divider(color: Colors.black87),

              GestureDetector(
                onTap: () {
                  _showConfirmationDialog(context, "Delete Account", "Are you sure you want to delete your account?");
                },
                child: const ListTile(
                  leading: Icon(Icons.delete_forever, color: Colors.black),
                  title: Text(
                    "Delete Account",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                    ),
                  ),
                  trailing: Icon(Icons.arrow_forward_ios),
                ),
              ),
              const Divider(color: Colors.black87),

              GestureDetector(
                onTap: () {
                  _showConfirmationDialog(context, "Logout", "Are you sure you want to logout?");
                },
                child: const ListTile(
                  leading: Icon(Icons.logout, color: Colors.black),
                  title: Text(
                    "Logout",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                    ),
                  ),
                  trailing: Icon(Icons.arrow_forward_ios),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }


  void _showConfirmationDialog(BuildContext context, String title, String message) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(title),
          content: Text(message),
          actions: <Widget>[
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text('Cancel'),
            ),
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
                // Perform action when user confirms
              },
              child: Text('Yes'),
            ),
          ],
        );
      },
    );
  }
}
