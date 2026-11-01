
import 'package:flutter/material.dart';
import 'package:ui_template/src/models/songs_model.dart';

class SongsCard extends StatelessWidget {
  final SongsModel song;
  final VoidCallback onLikeToggle;

  const SongsCard({
    super.key,
    required this.song,
    required this.onLikeToggle,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            CircleAvatar(
              radius: 25,
              backgroundColor: song.isLiked
                  ? Colors.blueAccent.shade100
                  : Colors.deepPurple,
              child: const Icon(
                Icons.play_arrow,
                size: 30,
                color: Colors.white,
              ),
            ),

            const SizedBox(width: 12),

            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    song.title,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),

                  Text(
                    song.author,
                    style: const TextStyle(
                      color: Colors.grey,
                      fontSize: 12,
                    ),
                  ),
                ],
              ),
            ),

            Text(
              song.duration,
              style: const TextStyle(
                color: Colors.grey,
                fontSize: 12,
              ),
            ),

            const SizedBox(width: 8),

            IconButton(
              icon: Icon(
                Icons.favorite,
                color: song.isLiked
                    ? Colors.pinkAccent.shade100
                    : Colors.deepPurple,
              ),
              onPressed: onLikeToggle,
            ),

            const Icon(
              Icons.more_vert,
              color: Colors.deepPurple,
            ),
          ],
        ),

        const Divider(height: 20),
      ],
    );
  }
}
