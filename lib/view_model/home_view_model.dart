import 'package:flutter/cupertino.dart';

class HomeViewModel extends ChangeNotifier{

  final List<Map<String, String>> items = [
    {
      "title": "Cycle Tracking",
      "subtitle": "Track your cycle and predict your next period easily with insights.",
      "time": "12 min ago",
      "status": "Active"
    },
    {
      "title": "Sleep Tracking",
      "subtitle": "Monitor your daily sleep routine and maintain a healthy lifestyle.",
      "time": "1 hr ago",
      "status": "Inactive"
    },
    {
      "title": "Water Reminder",
      "subtitle": "Stay hydrated throughout the day by setting reminders.",
      "time": "2 hrs ago",
      "status": "Active"
    },
  ];

}