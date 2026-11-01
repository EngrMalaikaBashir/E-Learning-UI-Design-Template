import 'package:flutter/material.dart';

class CourseDetailsScreen extends StatefulWidget {
  const CourseDetailsScreen({super.key});

  @override
  State<CourseDetailsScreen> createState() => _CourseDetailsScreenState();
}

class _CourseDetailsScreenState extends State<CourseDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              clipBehavior: Clip.none,
              children: [
                // 1. For image
                Image.network(
                  "https://img.magnific.com/free-photo/abstract-flowing-neon-wave-background_53876-101942.jpg?semt=ais_hybrid&w=740&q=80",
                  height: 250,
                  width: double.infinity,
                 fit: BoxFit.cover,
                ),
        
                // 2. Back Arrow button
                Positioned(
                  left: 16,
                  top: 45,
                  child: CircleAvatar(
                    backgroundColor: Colors.black38,
                    child: IconButton(
                      icon: const Icon(Icons.arrow_back, color: Colors.white),
                      onPressed: () {
                        //Navigator.pop(context);
                      },
                    ),
                  ),
                ),
                Positioned(
                  bottom: -20,
                  left: 20,
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 10,
                      vertical: 6,
                    ),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(30),
                    
                      boxShadow: [BoxShadow(color: Colors.grey.shade200 , blurRadius : 1, spreadRadius: 2)]
                    ),
                    child: Row(
                      children: const [
                        CircleAvatar(
                          radius: 16,
                          backgroundImage: NetworkImage(
                            'https://i.pravatar.cc/100?img=12',
                          ),
                        ),
                        SizedBox(width: 8),
                        Text(
                          'Tom Collins',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 14,
                            color: Colors.black87,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 35),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 20,
              ), // Corners se space dene ke liye
              child: Row(
                mainAxisAlignment:
                    MainAxisAlignment.spaceBetween, // Ya spaceAround
                children: [
                  // 1. Text
                  const Text(
                    'Building iOS15 App',
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                  ),
        
                  // 2. Button / Container for $25
                  Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 16,
                      vertical: 8,
                    ),
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: const Text(
                      '\$24',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 5),
            ListTile(
              contentPadding: EdgeInsets.symmetric(horizontal: 25),
              visualDensity: const VisualDensity(vertical: -4),
        
              leading: Icon(Icons.access_time, size: 18, color: Colors.grey),
              title: Text(
                '1h 13m',
                style: TextStyle(
                  color: Colors.grey.shade500,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
        
            ListTile(
              contentPadding: EdgeInsets.symmetric(horizontal: 25),
              visualDensity: const VisualDensity(vertical: -4),
              leading: Icon(Icons.star, size: 18, color: Colors.grey),
              title: Text(
                '5.0/5.0',
                style: TextStyle(
                  color: Colors.grey.shade500,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(height:20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // 1. Heading
                  const Text(
                    'Course Description',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
        
                  const SizedBox(height: 20),
        
                  // 2. Paragraph Text
                  Text(
                    'In this course you will learn how to build iOS app. We will go through the whole process beginning with the first line of code, managing the user interface storyboard and creating logic.',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.grey.shade700,
                      height: 1.4, 
                    ),
                  ),
        
                  const SizedBox(height: 25),
                  const Text(
                    'Course Overview',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                 const SizedBox(height: 7),
                 ListTile(
                 tileColor: Colors.white,
                 shape:RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                 ),
                  title:Text('Introduction',style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),),
                  trailing:Icon(Icons.keyboard_arrow_right,size:20),
                  
                 )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
