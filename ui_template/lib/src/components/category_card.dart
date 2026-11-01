import 'package:flutter/material.dart';
import '../models/category_model.dart';

class CategoryCard extends StatelessWidget {
  final CategoryModel item;

  const CategoryCard({
    super.key,
    required this.item,
  });

  @override
  Widget build(BuildContext context) {
    // 1. Text container
    final textWidget = SizedBox(
      width: 135,
      child: Container(
        color: item.backgroundColor,
        padding: const EdgeInsets.all(12.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: item.isReversed?CrossAxisAlignment.end:CrossAxisAlignment.start,
          children: [
            Text(
              item.title,
              //textAlign: item.isReversed ? TextAlign.right : TextAlign.end,
              style:  TextStyle( 
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: (item.isReversed) ? Colors.white.withValues(alpha:0.7) : Colors.black, 
              ),
            ),
            const SizedBox(height: 3),
            Text(
              item.coursesCount,
              style: TextStyle(
                fontSize: 14,
                color: Colors.white.withValues(alpha: 0.6),
              ),
            ),
          ],
        ),
      ),
    );
    
    // 2. Empty space taake background image side par nazar aaye
    const imageSpaceWidget = Expanded(child: SizedBox());

    return Container(
      height: 130,
      margin: const EdgeInsets.only(bottom: 16),
      clipBehavior: Clip.antiAlias,
      decoration: BoxDecoration(
       // borderRadius: BorderRadius.circular(12),
      ),
      child: Stack(
        children: [
          // Background Image (Pore Card par stretch)
          Positioned.fill(
            child: Image.asset(
              item.imagePath,
              fit: BoxFit.cover,
              errorBuilder: (context, error, stackTrace) {
                return Container(color: Colors.black12);
              },
            ),
          ),

          // Layout Row
          Row(
            children: item.isReversed
                ? [imageSpaceWidget, textWidget]
                : [textWidget, imageSpaceWidget],
          ),
        ],
      ),
    );
  }
}