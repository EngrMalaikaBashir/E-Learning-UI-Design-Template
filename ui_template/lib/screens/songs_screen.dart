
import 'package:flutter/material.dart';
import 'package:ui_template/src/models/songs_model.dart';
import 'package:ui_template/screens/home_screen.dart';
import '../src/mock_songs_data.dart';
import '../src/components/songs_card.dart';
import '../src/components/bottom_action_buttons.dart';

class SongsScreen extends StatefulWidget {
  const SongsScreen({super.key});

  @override
  State<SongsScreen> createState() => _SongsScreenState();
}

class _SongsScreenState extends State<SongsScreen> {
  late List<SongsModel> songs;

  @override
  void initState() {
    super.initState();
    songs = mockSongs;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        centerTitle: true,

        title: const Text(
          'Course',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),

        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: IconButton(
            onPressed: () => 
             Navigator.pop(
                context,
                MaterialPageRoute(builder: (context) =>  HomeScreen()),      
             ),
           icon: Icon(Icons.arrow_back_ios,
            color: Colors.white.withValues(alpha: 0.6),
          ),
        ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Icon(
              Icons.menu,
              size: 30,
              color: Colors.white.withValues(alpha: 0.6),
            ),
          ),
        ],
      ),

      body: Column(
        children: [
          // Banner Header
          SizedBox(
            height: 200,
            width: double.infinity,

            child: Stack(
              children: [
                Positioned.fill(
                  child: Image.asset(
                    'assets/images/girlPhoto.png',
                    fit: BoxFit.cover,
                    
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.all(16.0),

                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Photography',
                        style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                        ),
                      ),

                      const SizedBox(height: 4),

                      Row(
                        children: const [
                          Icon(
                            Icons.person,
                            size: 16,
                            color: Colors.blue,
                          ),
                          Text('10k'),

                          SizedBox(width: 15),

                          Icon(
                            Icons.star,
                            size: 16,
                            color: Colors.blue,
                          ),
                          Text('5.0'),
                        ],
                      ),

                      const SizedBox(height: 20),

                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            '\$',
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                            ),
                          ),

                          Text(
                            '60',
                            style: TextStyle(
                              fontSize: 36,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),

          const SizedBox(height: 5),

          // Content Section
          Expanded(
            child: Container(
              padding: const EdgeInsets.all(16),

              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(50),
                  topRight: Radius.circular(50),
                ),
              ),

              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,

                children: [
                  const Text(
                    'Categories Content',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  const SizedBox(height: 22),

                  // Songs List
                  Expanded(
                    child: ListView.builder(
                      itemCount: songs.length,

                      itemBuilder: (context, index) {
                        return SongsCard(
                          song: songs[index],
                          onLikeToggle: () {
                            setState(() {
                              songs[index].isLiked =
                                  !songs[index].isLiked;
                            });
                          },
                        );
                      },
                    ),
                  ),

                  // Bottom Buttons
                  BottomActionButtons(
                    onCartPressed: () {
                      // Cart button action
                    },

                    onBuyNowPressed: () {
                      // Buy Now button action
                    },
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
