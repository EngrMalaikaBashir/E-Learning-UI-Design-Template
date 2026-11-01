import 'package:flutter/material.dart';

class StatCard extends StatelessWidget {
  final IconData icon;
  final Color iconColor;
  final String title;
  final String value;
  final Color badgeColor;

  const StatCard({
    super.key,
    required this.icon,
    required this.iconColor,
    required this.title,
    required this.value,
    required this.badgeColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 12),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
      ),
      child: ListTile(
        // 1. Left Icon
        leading: Icon(icon, color: iconColor, size: 22),

        // 2. Center Title
        title: Text(
          title,
          style: const TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.bold,
            color: Colors.black87,
          ),
        ),

        // 3. Right Badge
        trailing: Container(
          width: 50,
          padding: const EdgeInsets.symmetric(vertical: 8),
          decoration: BoxDecoration(
            color: badgeColor.withValues(alpha: 0.2), // Light background hue
            borderRadius: BorderRadius.circular(10),
          ),
          child: Text(
            value,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: iconColor,
            ),
          ),
        ),
      ),
    );
  }
}