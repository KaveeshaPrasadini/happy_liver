import 'package:flutter/material.dart';
import 'send_feedback.dart';

void main() {
  runApp(const SendFeedbackApp());
}

class SendFeedbackApp extends StatelessWidget {
  const SendFeedbackApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      title: 'Send Feedback',

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

      home: const SendFeedback(),
    );
  }
}