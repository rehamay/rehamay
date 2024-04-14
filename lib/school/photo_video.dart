import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class Photo extends StatefulWidget {
  const Photo({Key? key}) : super(key: key);

  @override
  State<Photo> createState() => _PhotoState();
}

class _PhotoState extends State<Photo> {
  File? _selectedImage;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text(
          "Edit your Photos",
          style: TextStyle(
            color: Colors.blue,
            fontWeight: FontWeight.bold,
            fontSize: 25,
          ),
        ),
        backgroundColor: Colors.transparent,
        centerTitle: true,
        leading: IconButton(
          onPressed: () {
            // Navigate back to the previous screen
            Navigator.pop(context);
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
              const SizedBox(height: 15),
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
                        boxShadow: const [
                          BoxShadow(
                            spreadRadius: 2,
                            blurRadius: 10,
                            color: Colors.grey,
                            offset: Offset(0, 10),
                          ),
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
                        child: InkWell(
                          onTap: () {
                            _showImagePicker(context);
                          },
                          child: const Icon(Icons.add_a_photo, color: Colors.black),
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 15),

              // Name section
              const Align(
                alignment: Alignment.center,
                child: Padding(
                  padding: EdgeInsets.only(bottom: 14), // Adjust top padding as needed
                  child: Text(
                    'Edit Your Logo Picture',
                    style: TextStyle(fontSize: 12, color: Colors.grey, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              const SizedBox(height: 30),
              Center(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          _buildPhotoItem(context, 'Add Background', 'https://img.freepik.com/premium-vector/education-school-logo-design_586739-1335.jpg?w=740'),
                          const SizedBox(width: 20),
                          _buildPhotoItem(context, 'Add Photo 1', 'https://img.freepik.com/premium-vector/education-school-logo-design_586739-1335.jpg?w=740'),
                        ],
                      ),
                      const SizedBox(height: 20),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          _buildPhotoItem(context, 'Add Photo 2', 'https://img.freepik.com/premium-vector/education-school-logo-design_586739-1335.jpg?w=740'),
                          const SizedBox(width: 20),
                          _buildPhotoItem(context, 'Add Photo 3', 'https://img.freepik.com/premium-vector/education-school-logo-design_586739-1335.jpg?w=740'),
                        ],
                      ),
                      const SizedBox(height: 20),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          _buildPhotoItem(context, 'Add Photo 4', 'https://img.freepik.com/premium-vector/education-school-logo-design_586739-1335.jpg?w=740'),
                          const SizedBox(width: 20),
                          _buildPhotoItem(context, 'Add Photo 5', 'https://img.freepik.com/premium-vector/education-school-logo-design_586739-1335.jpg?w=740'),
                        ],
                      ),
                      const SizedBox(height: 20),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          _buildPhotoItem(context, 'Add Photo 6', 'https://img.freepik.com/premium-vector/education-school-logo-design_586739-1335.jpg?w=740'),
                          const SizedBox(width: 20),
                          _buildPhotoItem(context, 'Add Photo 7', 'https://img.freepik.com/premium-vector/education-school-logo-design_586739-1335.jpg?w=740'),
                        ],
                      ),
                      const SizedBox(height: 20),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          _buildPhotoItem(context, 'Add Photo 8', 'https://img.freepik.com/premium-vector/education-school-logo-design_586739-1335.jpg?w=740'),
                          const SizedBox(width: 20),
                          _buildPhotoItem(context, 'Add Photo 9', 'https://img.freepik.com/premium-vector/education-school-logo-design_586739-1335.jpg?w=740'),
                        ],
                      ),
                    ],
                  ),
                ),
              ),

            ],

          ),
        ),
      ),
    );
  }

  Widget _buildPhotoItem(BuildContext context, String title, String imageUrl) {
    return Material(
      color: Colors.blueGrey,
      borderRadius: BorderRadius.circular(15),
      clipBehavior: Clip.antiAliasWithSaveLayer,
      child: InkWell(
        onTap: (){
          _showImagePicker(context);
        },
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Ink.image(
              image: NetworkImage(imageUrl),
              height: 150,
              width: 150,
              fit: BoxFit.cover,
            ),
            Text(title),
            const Icon(Icons.add)
          ],
        ),
      ),
    );
  }

  void _showImagePicker(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return Container(
          height: 150,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ListTile(
                leading: const Icon(Icons.camera_alt),
                title: const Text('Camera'),
                onTap: () {
                  Navigator.pop(context);
                  _getImage(ImageSource.camera, context);
                },
              ),
              ListTile(
                leading: const Icon(Icons.image),
                title: const Text('Gallery'),
                onTap: () {
                  Navigator.pop(context);
                  _getImage(ImageSource.gallery, context);
                },
              ),
            ],
          ),
        );
      },
    );
  }

  void _getImage(ImageSource source, BuildContext context) async {
    final picker = ImagePicker();
    final pickedFile = await picker.pickImage(source: source);

    if (pickedFile != null) {
      setState(() {
        _selectedImage = File(pickedFile.path);
      });
    } else {
      // User canceled the picker
    }
  }
}

void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Photo(),
  ));
}
