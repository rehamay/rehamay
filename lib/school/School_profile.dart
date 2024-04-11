import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:remoo/school/home_page_sch.dart'; // Assuming sign-in file path is correct

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
        actions: [
          IconButton(
            icon: const Icon(Icons.settings),
            onPressed: () {},
          )
        ],
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
                          fit: BoxFit.cover, // Fix typo here
                          image: NetworkImage("https://images.unsplash.com/photo-1575936123452-b67c3203c357?q=80&w=1000&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8aW1hZ2V8ZW58MHx8MHx8fDA%3D"),
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: 0,
                      right: 0,
                      child: Container(
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(
                            width: 4,
                            color: Theme.of(context).scaffoldBackgroundColor,
                          ),
                          color: Colors.grey,
                        ),
                        child: const Icon(Icons.add_a_photo, color: Colors.black),
                      ),
                    )
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
              const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ListTile(
                    leading: Icon(Icons.content_paste_go, color: Colors.black),
                    title: Text(
                      "Application Submitted",
                      style: TextStyle(
                        color: Colors.black, // Replace with the appropriate color
                        fontSize: 20, // Replace with the desired font size
                      ),
                    ),
                    trailing: Icon(Icons.arrow_forward_ios),
                  ),
                  ListTile(
                    leading: Icon(Icons.add_a_photo, color: Colors.black),
                    title: Text(
                      "Add Photo",
                      style: TextStyle(
                        color: Colors.black, // Replace with the appropriate color
                        fontSize: 20, // Replace with the desired font size
                      ),
                    ),
                    trailing: Icon(Icons.arrow_forward_ios),
                  ),
                  ListTile(
                    leading: Icon(Icons.payment, color: Colors.black),
                    title: Text(
                      "Payment",
                      style: TextStyle(
                        color: Colors.black, // Replace with the appropriate color
                        fontSize: 20, // Replace with the desired font size
                      ),
                    ),
                    trailing: Icon(Icons.arrow_forward_ios),
                  ),
                 
                  ListTile(
                    leading: Icon(Icons.delete, color: Colors.black),
                    title: Text(
                      "Delete Account",
                      style: TextStyle(
                        color: Colors.black, // Replace with the appropriate color
                        fontSize: 20, // Replace with the desired font size
                      ),
                    ),
                    trailing: Icon(Icons.arrow_forward_ios),
                  ),
                  ListTile(
                    leading: Icon(Icons.logout, color: Colors.black),
                    title: Text(
                      "Log Out",
                      style: TextStyle(
                        color: Colors.black, // Replace with the appropriate color
                        fontSize: 20, // Replace with the desired font size
                      ),
                    ),
                    trailing: Icon(Icons.arrow_forward_ios),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),

    );
  }
}
