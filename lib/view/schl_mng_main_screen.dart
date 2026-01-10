import 'package:flutter/material.dart';
import 'package:school_managementui_app/view/calendar/today_calendar.dart';
import 'package:school_managementui_app/view/home/home_screen.dart';

class SchoolManagementMainScreen extends StatefulWidget {
  const SchoolManagementMainScreen({super.key});

  @override
  State<SchoolManagementMainScreen> createState() =>
      _SchoolManagementMainScreenState();
}

class _SchoolManagementMainScreenState
    extends State<SchoolManagementMainScreen> {
  int currentIndex = 0;
  final List screens = const [
    HomeScreen(),
    HomeScreen(),
    HomeScreen(),
    TodayCalendar(),
    HomeScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        iconSize: 25,
        type: BottomNavigationBarType.fixed,
        currentIndex: currentIndex,
        onTap: (value) {
          setState(() {
            currentIndex = value;
          });
        },
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(
            icon: Icon(Icons.insert_chart),
            label: "Insert Chart",
          ),
          BottomNavigationBarItem(icon: Icon(Icons.done), label: "Done"),
          BottomNavigationBarItem(
            icon: Icon(Icons.calendar_today),
            label: "Calender Today",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.chat_bubble),
            label: "Chat Bubble",
          ),
        ],
      ),
    );
  }
}
