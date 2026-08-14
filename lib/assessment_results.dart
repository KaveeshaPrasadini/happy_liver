import 'package:flutter/material.dart';
import 'menu.dart';
import 'main.dart';

class AssessmentResults extends StatelessWidget {
  const AssessmentResults({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      appBar: AppBar(
        backgroundColor: const Color(0xFFE7F8DE),
        elevation: 0,
        automaticallyImplyLeading: false,

        actions: const [
          Icon(
            Icons.notifications,
            color: Colors.black,
          ),

          SizedBox(width: 15),

          // NetworkImage removed
          CircleAvatar(
            radius: 18,
            backgroundColor: Colors.grey,
            child: Icon(
              Icons.person,
              color: Colors.white,
            ),
          ),

          SizedBox(width: 15),
        ],
      ),

      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),

          child: Column(
            children: [
              const SizedBox(height: 5),

              // Assessment Results title
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text(
                    "Assessment Results",
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  SizedBox(width: 8),

                  Icon(
                    Icons.check_circle_outline,
                    size: 35,
                  ),
                ],
              ),

              const SizedBox(height: 20),

              // Risk Legend
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const [
                  LegendItem(
                    color: Colors.green,
                    text: "Low",
                  ),

                  LegendItem(
                    color: Colors.orange,
                    text: "Moderate",
                  ),

                  LegendItem(
                    color: Colors.red,
                    text: "High",
                  ),
                ],
              ),

              const SizedBox(height: 20),

              // Fatty Liver Risk
              const Text(
                "Fatty Liver Risk",
                style: TextStyle(
                  fontSize: 25,
                  color: Colors.green,
                  fontWeight: FontWeight.bold,
                ),
              ),

              const SizedBox(height: 10),

              const RiskCircle(
                color: Colors.orange,
                text: "Moderate\nRisk",
              ),

              const SizedBox(height: 20),

              // Cholesterol Risk
              const Text(
                "Cholesterol Risk",
                style: TextStyle(
                  fontSize: 25,
                  color: Colors.green,
                  fontWeight: FontWeight.bold,
                ),
              ),

              const SizedBox(height: 10),

              const RiskCircle(
                color: Colors.red,
                text: "High Risk",
              ),

              const SizedBox(height: 20),

              // View Recommendations button below High Risk
              ElevatedButton.icon(
                onPressed: () {
                  Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const MainNavigationScreen(initialIndex: 2),
                    ),
                    (route) => false,
                  );
                },
                icon: const Icon(Icons.star, color: Colors.white),
                label: const Text(
                  "View Recommendations",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF146B0B),
                  padding: const EdgeInsets.symmetric(
                    horizontal: 24,
                    vertical: 14,
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                  elevation: 2,
                ),
              ),

              const SizedBox(height: 20),

              // Warning
              Container(
                padding: const EdgeInsets.all(10),

                decoration: BoxDecoration(
                  color: Colors.red.shade100,
                ),

                child: Row(
                  children: const [
                    Icon(
                      Icons.warning_amber_rounded,
                      color: Colors.grey,
                      size: 35,
                    ),

                    SizedBox(width: 10),

                    Expanded(
                      child: Text(
                        "This is a risk assessment tool and should not be considered a medical diagnosis.",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// --------------------------------------------------
// Legend Item
// --------------------------------------------------

class LegendItem extends StatelessWidget {
  final Color color;
  final String text;

  const LegendItem({
    super.key,
    required this.color,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CircleAvatar(
          radius: 8,
          backgroundColor: color,
        ),

        const SizedBox(width: 6),

        Text(
          text,
          style: const TextStyle(
            fontSize: 16,
          ),
        ),
      ],
    );
  }
}

// --------------------------------------------------
// Risk Circle
// --------------------------------------------------

class RiskCircle extends StatelessWidget {
  final Color color;
  final String text;

  const RiskCircle({
    super.key,
    required this.color,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 180,
      height: 180,

      decoration: BoxDecoration(
        shape: BoxShape.circle,

        border: Border.all(
          color: color,
          width: 14,
        ),
      ),

      child: Center(
        child: Text(
          text,
          textAlign: TextAlign.center,

          style: TextStyle(
            color: color,
            fontWeight: FontWeight.bold,
            fontSize: 26,
          ),
        ),
      ),
    );
  }
}