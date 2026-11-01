import 'package:flutter/material.dart';
import 'package:ui_template/screens/songs_screen.dart';
import 'package:ui_template/src/mock_data.dart';
import '../src/components/category_card.dart';

// Model file ka path

class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: Padding(
          padding: const EdgeInsets.only(bottom: 1),
          child: Text(
            'Home',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
              color: Colors.white,
            ),
          ),
        ),
        centerTitle: true,
        leading: Padding(
          padding: EdgeInsets.symmetric(horizontal: 22),
          child: IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const SongsScreen()),
              );
            },
            icon: Icon(
              Icons.arrow_back_ios_new,
              color: Colors.white.withValues(alpha: 0.6),
              weight: 100,
            ),
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            padding: const EdgeInsets.symmetric(horizontal: 18),
            icon: Icon(
              Icons.menu,
              color: Colors.white.withValues(alpha: 0.6),
              size: 28,
            ),
          ),
        ],
      ),

      //Search bar yaha sa start ho ga
      body: SingleChildScrollView(
        padding: EdgeInsetsGeometry.symmetric(horizontal: 20, vertical: 10),
        child: Column(
          children: [
            const SizedBox(height: 20),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(40),
                color: Colors.blueGrey.withValues(alpha: 0.3),
              ),
              child: const TextField(
                textAlign: TextAlign.center,
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.only(top: 12),
                  border: InputBorder.none,

                  prefixIcon: Padding(
                    padding: EdgeInsets.only(left: 17, right: 10),
                    child: Icon(Icons.search, size: 30),
                  ),
                  suffixIcon: Opacity(opacity: 0.0, child: Icon(Icons.search)),

                  hintText: 'Search for anything',
                  hintStyle: TextStyle(color: Colors.blueGrey, fontSize: 13),
                ),
              ),
            ),
            const SizedBox(height: 24),

            //Hi Dean Section
            ListTile(
              leading: const CircleAvatar(
                radius: 30,
                backgroundColor: Color(0xFF6C63FF),
                child: Padding(
                  padding: EdgeInsets.all(9.0),
                  child: Icon(
                    Icons.person_2_rounded,
                    color: Colors.white,
                    size: 34,
                  ),
                ),
              ),
              title: Text(
                'Hi Dean,',
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF2D2D3A),
                ),
              ),
              subtitle: Text(
                'Find a course you want to learn',
                style: TextStyle(fontSize: 14, color: Colors.black),
              ),
            ),

            // Categories Header Section
            const SizedBox(height: 25),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Categories',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                Text(
                  'See all',
                  style: TextStyle(fontSize: 15, color: Colors.grey),
                ),
              ],
            ),
            const SizedBox(height: 13),
            ListView.builder(
              shrinkWrap:
                  true, // List ko utni hi jagah lene deta hai jitni zarurat ho
              physics:
                  const NeverScrollableScrollPhysics(), // Scroll ko outer parent ke sath sync rakhta hai
              itemCount: categoriesList.length,
              itemBuilder: (context, index) {
                return CategoryCard(item: categoriesList[index]);
              },
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const SongsScreen()),
                );
              },
              
               style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromARGB(255, 227, 155, 239),
               ),
              child: const Text('Next',
              style: TextStyle(
                fontSize: 20,
                color:Colors.black,
                fontWeight: FontWeight.bold,
                

              ),
              ),
            ),
            
          ],
      ),
      ),
    );
  }
}
