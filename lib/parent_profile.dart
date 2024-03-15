import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:remoo/your_profile.dart';
import 'Payment.dart';
import 'home_page_parent.dart'; // Assuming sign-in file path is correct

class Parent_Profile extends StatelessWidget {
  const Parent_Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title:const Text("Profile",style:TextStyle(color: Colors.blue,
            fontWeight:FontWeight.bold,
            fontSize: 25),) ,
        backgroundColor: Colors.transparent,
        centerTitle: true,
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

              const SizedBox(height: 15), // Add space between profile image and text
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
              const SizedBox(height: 20), // Add space between profile image and titles with icons
              GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                      builder: (context) => const your_profile(), // Navigate back to SignIn widget
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
                      builder: (context) =>  PaymentScreen(), // Navigate back to SignIn widget
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
              const Divider(color: Colors.black87),
              GestureDetector(
                onTap: () {
                  // Navigate to Settings screen
                  // Navigator.push(context, MaterialPageRoute(builder: (context) => SettingsScreen()));
                },
                child: const ListTile(
                  leading: Icon(Icons.settings, color: Colors.black),
                  title: Text(
                    "Settings",
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
                  // Navigate to Help Center screen
                  // Navigator.push(context, MaterialPageRoute(builder: (context) => HelpCenterScreen()));
                },
                child: const ListTile(
                  leading: Icon(Icons.help_center_outlined, color: Colors.black),
                  title: Text(
                    "Help Center",
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
                  // Navigate to Privacy screen
                  // Navigator.push(context, MaterialPageRoute(builder: (context) => PrivacyScreen()));
                },
                child: const ListTile(
                  leading: Icon(Icons.lock, color: Colors.black),
                  title: Text(
                    "Privacy",
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
                  // Log Out
                },
                child: const ListTile(
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
              ),
              const Divider(color: Colors.black87),
            ],
          ),
        ),
      ),
    );
  }
}
