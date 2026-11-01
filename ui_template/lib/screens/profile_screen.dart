import 'package:flutter/material.dart';
import 'package:ui_template/src/components/stat_card.dart';
import 'package:ui_template/src/components/stat_item.dart';
import 'package:ui_template/screens/course_details_screen.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        title: const Text(
          'Profile',
          style: TextStyle(
            color: Colors.grey,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.tune, color: Colors.grey),
          ),
        ],
      ),

      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 20),
              CircleAvatar(
                backgroundImage: AssetImage('assets/images/image.png'),
                backgroundColor: Colors.orangeAccent,
                radius: 50,
              ),
              const SizedBox(height: 5),

              Text(
                'Sally Robins',
                style: TextStyle(
                  color: Colors.blueGrey,
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                ),
              ),

              const SizedBox(height: 5),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Icon(Icons.location_on, size: 20),
                  SizedBox(height: 5),
                  Text(
                    'NEW YORK',
                    style: TextStyle(
                      color: Colors.blueGrey,
                      fontSize: 13,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 25),
              Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.grey.shade50,
                  border: Border.all(width: 5, color: Colors.white),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    StatItem(value: '0', title: 'My COURSES'),
                    StatItem(value: '2', title: 'FOLLOWERS'),
                    StatItem(value: '32', title: 'FOLLOWING'),
                  ],
                ),
              ),
              const SizedBox(height: 25),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'TOTAL STATISTICS',
                    style: TextStyle(
                      color: Colors.grey.shade500,
                      fontWeight: FontWeight.bold,
                      fontSize: 13,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 5),
              StatCard(
                icon: Icons.check,
                iconColor: Colors.blue,
                title: 'Finished  Courses',
                value: '3',
                badgeColor: Colors.blue.shade50,
              ),
              StatCard(
                icon: Icons.hourglass_bottom_rounded,
                iconColor: Colors.orange,
                title: 'Hours Learned',
                value: '56',
                badgeColor: Colors.orange.shade100,
              ),
              StatCard(
                icon: Icons.emoji_events_outlined,
                iconColor: Colors.green,
                title: 'Skills Achieved',
                value: '7',
                badgeColor: Colors.green.shade100,
              ),

              const SizedBox(height: 20),
              ElevatedButton(
                style:ElevatedButton.styleFrom(
                  backgroundColor: Colors.black,
                  foregroundColor: Colors.white,
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const CourseDetailsScreen(),
                    ),
                  );
                },
                child: const Text('Next'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
