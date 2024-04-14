import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:remoo/parent/your_profile.dart';
import '../Payment.dart';
import 'edit_payment.dart';
import 'home_page_parent.dart';

class Parent_Profile extends StatelessWidget {
  const Parent_Profile({Key? key}) : super(key: key);

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
                builder: (context) => const Home_Page_Parent(), // Navigate back to SignIn widget
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
                          image: NetworkImage("https://images.unsplash.com/photo-1575936123452-b67c3203c357?q=80&w=1000&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8aW1hZ2V8ZW58MHx8MHx8fDA%3D"),
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
              const SizedBox(height: 20), // Add space between profile image and titles with icons
              GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                      builder: (context) => const Your_profile(), // Navigate back to SignIn widget
                  ),// Navigate to Your Profile screen
                  );// Navigator.push(context, MaterialPageRoute(builder: (context) => YourProfileScreen()));
                },
                child: const ListTile(
                  leading: Icon(Icons.person, color: Colors.black),
                  title: Text(
                    "Your Profile",
                    style: TextStyle(
                      color: Colors.black, // Replace with the appropriate color
                      fontSize: 20, // Replace with the desired font size
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
                      builder: (context) =>  const PaymentScreen(), // Navigate back to SignIn widget
                    ),
                  );
                  // Navigate to Payment Method screen
                  // Navigator.push(context, MaterialPageRoute(builder: (context) => PaymentMethodScreen()));
                },
                child: const ListTile(
                  leading: Icon(Icons.payment, color: Colors.black),
                  title: Text(
                    "Payment Method",
                    style: TextStyle(
                      color: Colors.black, // Replace with the appropriate color
                      fontSize: 20, // Replace with the desired font size
                    ),
                  ),
                  trailing: Icon(Icons.arrow_forward_ios),
                ),
              ),

              //settings
              const Divider(color: Colors.black87),

              GestureDetector(
                onTap: () {
                  showModalBottomSheet(
                    context: context,
                    builder: (BuildContext context) {
                      return SizedBox(
                        height: 300,
                        child: Column(
                          children: [
                            const Padding(
                              padding: EdgeInsets.symmetric(vertical: 20),
                              child: Text(
                                "Payment Method",
                                style: TextStyle(
                                  fontSize: 24,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            Column(

                            ),
                            const Spacer(),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                OutlinedButton(
                                  onPressed: () {
                                    // Add delete account logic here
                                    Navigator.pop(context);
                                  },
                                  child: const Text('Cancel'),
                                ),
                                MaterialButton(
                                  onPressed: () {
                                    Navigator.pop(context);
                                  },
                                  child: const Text('Yes'),
                                  color: Colors.blue,
                                  textColor: Colors.black,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      );
                    },
                  );
                },
                child: const ListTile(
                  leading: Icon(Icons.help_center_outlined, color: Colors.black),
                  title: Text(
                    "Help Center",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                    ),
                  ),
                  trailing: Icon(Icons.arrow_forward_ios),
                ),
              ),
              const Divider(color: Colors.black87),

              //delet account
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


