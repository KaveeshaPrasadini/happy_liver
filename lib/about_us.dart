import 'package:flutter/material.dart';

class AboutUsScreen extends StatelessWidget {
  const AboutUsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: const Color(0xFFE5F8D8),
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => Navigator.pop(context),
        ),
        title: const Text(
          "About Us",
          style: TextStyle(
            color: Colors.black,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(24),
        child: Column(
          children: [
            const SizedBox(height: 20),
            Container(
              width: 90,
              height: 90,
              decoration: const BoxDecoration(
                color: Color(0xFF146B0B),
                shape: BoxShape.circle,
              ),
              child: const Icon(
                Icons.health_and_safety,
                color: Colors.white,
                size: 50,
              ),
            ),
            const SizedBox(height: 16),
            const Text(
              "HappyLiver",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Color(0xFF146B0B),
              ),
            ),
            const SizedBox(height: 6),
            const Text(
              "Version 1.0.0",
              style: TextStyle(
                fontSize: 14,
                color: Colors.grey,
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(height: 30),
            Container(
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: const Color(0xFFF7FCF4),
                borderRadius: BorderRadius.circular(16),
                border: Border.all(color: const Color(0xFFE5F8D8)),
              ),
              child: const Text(
                "HappyLiver is dedicated to helping individuals track, monitor, and improve their liver health through intelligent assessment routines, personalized dietary and wellness recommendations, and daily tracking habits.",
                style: TextStyle(
                  fontSize: 15,
                  height: 1.5,
                  color: Colors.black87,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            const SizedBox(height: 30),
            const Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "Core Features",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(height: 12),
            _buildFeatureRow(Icons.analytics_outlined, "AI Liver Health Assessments"),
            _buildFeatureRow(Icons.calendar_today_outlined, "Custom Daily Routines"),
            _buildFeatureRow(Icons.thumb_up_alt_outlined, "Personalized Health Recommendations"),
            _buildFeatureRow(Icons.shield_outlined, "Privacy & Data Security First"),
            const SizedBox(height: 40),
            const Text(
              "© 2026 HappyLiver Health Inc. All rights reserved.",
              style: TextStyle(
                fontSize: 12,
                color: Colors.grey,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildFeatureRow(IconData icon, String text) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Row(
        children: [
          Icon(icon, color: const Color(0xFF146B0B), size: 22),
          const SizedBox(width: 14),
          Text(
            text,
            style: const TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }
}
