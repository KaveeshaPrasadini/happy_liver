import 'package:flutter/material.dart';
import 'report_problem.dart';

void main() {
  runApp(const ReportProblemApp());
}

class ReportProblemApp extends StatelessWidget {
  const ReportProblemApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      title: 'Report a Problem',

      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,

        appBarTheme: const AppBarTheme(
          backgroundColor: Color(0xFFE5F8D8),
          elevation: 0,

          iconTheme: IconThemeData(
            color: Colors.black,
          ),

          titleTextStyle: TextStyle(
            color: Colors.black,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),

      home: const ReportProblem(),
    );
  }
}