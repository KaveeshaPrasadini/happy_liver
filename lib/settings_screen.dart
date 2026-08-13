import 'package:flutter/material.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      // Settings bar
      appBar: AppBar(
        backgroundColor: const Color(0xFFE5F8D8),
        elevation: 0,

        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),

        title: const Text(
          "Settings",
          style: TextStyle(
            color: Colors.black,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),

      body: Column(
        children: [

          const SizedBox(height: 30),

          // Dark Mode
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              children: [

                const Icon(
                  Icons.dark_mode_outlined,
                  size: 30,
                  color: Colors.black,
                ),

                const SizedBox(width: 20),

                const Expanded(
                  child: Text(
                    "Dark mode",
                    style: TextStyle(
                      fontSize: 17,
                    ),
                  ),
                ),

                Switch(
                  value: true,
                  activeColor: Colors.green,
                  onChanged: (value) {},
                ),
              ],
            ),
          ),

          // Notifications
          settingTile(
            Icons.notifications_none,
            "Notifications",
          ),

          // Language
          settingTile(
            Icons.language,
            "Language",
          ),

          // Help & Feedback
          settingTile(
            Icons.chat_bubble_outline,
            "Help & Feedback",
          ),

          // About Us
          settingTile(
            Icons.phone_android,
            "About us",
          ),

          const Spacer(),

          const Text(
            "HappyLiver\nVersion 1.0.0",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 13,
              fontWeight: FontWeight.bold,
            ),
          ),

          const SizedBox(height: 80),
        ],
      ),
    );
  }

  Widget settingTile(
      IconData icon,
      String title,
      ) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 9,
      ),

      child: Row(
        children: [

          Icon(
            icon,
            size: 30,
            color: Colors.black,
          ),

          const SizedBox(width: 20),

          Expanded(
            child: Text(
              title,
              style: const TextStyle(
                fontSize: 17,
              ),
            ),
          ),

          const Icon(
            Icons.arrow_forward_ios,
            size: 22,
            color: Colors.black,
          ),
        ],
      ),
    );
  }
}