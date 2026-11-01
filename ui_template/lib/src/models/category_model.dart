import 'package:flutter/material.dart';

class CategoryModel {
  final String title;
  final String coursesCount;
  final String imagePath;
  final Color backgroundColor;
  final bool isReversed;

CategoryModel({
  required this.title,
  required this.coursesCount,
  required this.imagePath,
  required this.backgroundColor,
  required this.isReversed,
});

}