import 'package:flutter/material.dart';
import 'recommendations.dart';

void main() {
  runApp(const RecommendationsApp());
}

class RecommendationsApp extends StatelessWidget {
  const RecommendationsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      title: 'Recommendations',

      theme: ThemeData(
        primarySwatch: Colors.green,
      ),

      home: const RecommendationsScreen(),
    );
  }
}