import 'package:flutter/material.dart';
import 'package:school_managementui_app/view/home/home_Screen.dart';

class SchoolManagementMainScreen extends StatefulWidget {
  const SchoolManagementMainScreen({super.key});

  @override
  State<SchoolManagementMainScreen> createState() =>
      _SchoolManagementMainScreenState();
}

class _SchoolManagementMainScreenState
    extends State<SchoolManagementMainScreen> {
  int currentIndex = 0;
  List<Widget> screens = [
    HomeScreen(),
    Scaffold(body: Center(child: Text("insert_chart"))),
    Scaffold(body: Center(child: Text("done"))),
    Scaffold(body: Center(child: Text("calendar_today"))),
    Scaffold(body: Center(child: Text("chat_bubble"))),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        iconSize: 25,

        currentIndex: currentIndex,
        onTap: (value) {
          setState(() {
            currentIndex = value;
          });
        },
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: ""),
          BottomNavigationBarItem(icon: Icon(Icons.insert_chart), label: ""),
          BottomNavigationBarItem(icon: Icon(Icons.done), label: ""),
          BottomNavigationBarItem(icon: Icon(Icons.calendar_today), label: ""),
          BottomNavigationBarItem(icon: Icon(Icons.chat_bubble), label: ""),
        ],
      ),
    );
  }
}
