import 'package:flutter/material.dart';

class NotificationsScreen extends StatefulWidget {
  const NotificationsScreen({super.key});

  @override
  State<NotificationsScreen> createState() => _NotificationsScreenState();
}

class _NotificationsScreenState extends State<NotificationsScreen> {
  bool pushNotifications = true;
  bool dailyReminders = true;
  bool weeklySummary = false;
  bool healthTips = true;

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
          "Notifications",
          style: TextStyle(
            color: Colors.black,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        children: [
          _buildSwitchTile(
            title: "Push Notifications",
            subtitle: "Receive overall app notifications",
            value: pushNotifications,
            onChanged: (val) => setState(() => pushNotifications = val),
          ),
          const Divider(),
          _buildSwitchTile(
            title: "Daily Routine Reminders",
            subtitle: "Reminders to complete daily liver health routines",
            value: dailyReminders,
            onChanged: (val) => setState(() => dailyReminders = val),
          ),
          const Divider(),
          _buildSwitchTile(
            title: "Weekly Summary Report",
            subtitle: "Get insights on your weekly progress",
            value: weeklySummary,
            onChanged: (val) => setState(() => weeklySummary = val),
          ),
          const Divider(),
          _buildSwitchTile(
            title: "Health Tips & Recommendations",
            subtitle: "Tips based on your assessment results",
            value: healthTips,
            onChanged: (val) => setState(() => healthTips = val),
          ),
        ],
      ),
    );
  }

  Widget _buildSwitchTile({
    required String title,
    required String subtitle,
    required bool value,
    required ValueChanged<bool> onChanged,
  }) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  subtitle,
                  style: TextStyle(
                    fontSize: 13,
                    color: Colors.grey.shade600,
                  ),
                ),
              ],
            ),
          ),
          Switch(
            value: value,
            activeThumbColor: Colors.green,
            onChanged: onChanged,
          ),
        ],
      ),
    );
  }
}
