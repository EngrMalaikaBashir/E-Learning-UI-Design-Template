
import 'package:flutter/material.dart';
import 'package:ui_template/src/models/category_model.dart';

final List<CategoryModel> categoriesList = [
  CategoryModel(
    title: 'Photography',
    coursesCount: '14 Course',
    imagePath: 'assets/images/photography.png',
    backgroundColor: Colors.grey.withValues(alpha: 0.7),
    isReversed: false,
  ),
  CategoryModel(
    title: 'Art',
    coursesCount: '12 Course',
    imagePath: 'assets/images/art.png',
    backgroundColor: Colors.brown.withValues(alpha: 0.7),
    isReversed: true,
  ),
  CategoryModel(
    title: 'Sing',
    coursesCount: '16 Course',
    imagePath: 'assets/images/sing.png',
    backgroundColor:Colors.pink.withValues(alpha: 0.7),
    isReversed: false,
  ),
];
