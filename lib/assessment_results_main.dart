import 'package:flutter/material.dart';
import 'assessment_results.dart';

void main() {
  runApp(const AssessmentResultsApp());
}

class AssessmentResultsApp extends StatelessWidget {
  const AssessmentResultsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      title: 'Assessment Results',

      theme: ThemeData(
        primarySwatch: Colors.green,
        scaffoldBackgroundColor: Colors.white,

        appBarTheme: const AppBarTheme(
          backgroundColor: Color(0xFFE7F8DE),
          elevation: 0,

          iconTheme: IconThemeData(
            color: Colors.black,
          ),
        ),
      ),

      home: const AssessmentResults(),
    );
  }
}