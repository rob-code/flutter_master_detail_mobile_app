import 'package:flutter/material.dart';

class AppContent {
  final String title;
  final String subtitle;
  final String description;

  AppContent(this.title, this.subtitle, this.description);
}

final List<AppContent> samples = [
  AppContent('title 1', 'subtitle 1', 'description 1'),
  AppContent('title 2', 'subtitle 2', 'description 2'),
  AppContent('title 3', 'subtitle 3', 'description 3'),
  AppContent('title 4', 'subtitle 4', 'description 4'),
  AppContent('title 5', 'subtitle 5', 'description 5'),
  AppContent('title 6', 'subtitle 6', 'description 6'),
  AppContent('title 7', 'subtitle 7', 'description 7'),
  AppContent('title 8', 'subtitle 8', 'description 8'),
  AppContent('title 9', 'subtitle 9', 'description 9'),
  AppContent('title 10', 'subtitle 10', 'description 10'),
  AppContent('title 11', 'subtitle 11', 'description 11'),
  AppContent('title 12', 'subtitle 12', 'description 12'),
  AppContent('title 13', 'subtitle 13', 'description 13'),
  AppContent('title 14', 'subtitle 14', 'description 14'),
  AppContent('title 15', 'subtitle 15', 'description 15'),
  AppContent('title 16', 'subtitle 16', 'description 16'),
  AppContent('title 17', 'subtitle 17', 'description 17'),
];

class ListIcon {
  static List<Icon> icons = [
    const Icon(Icons.question_mark_outlined),
    const Icon(Icons.circle),
    const Icon(Icons.check),
    const Icon(Icons.circle_outlined)
  ];
}

class ListIconColor {
  static List<Color> colors = [
    Colors.red,
    Colors.amber,
    Colors.green,
    Colors.grey
  ];
}
