import 'package:flutter/material.dart';
import 'package:school_managementui_app/view/schl_mng_main_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  //Root widget of app
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'School Management',
      theme: ThemeData(
        bottomNavigationBarTheme: BottomNavigationBarThemeData(
          landscapeLayout: BottomNavigationBarLandscapeLayout.linear,
          enableFeedback: true,
          selectedIconTheme: IconThemeData(
            size: 25,
            fill: 0.1,
            grade: 1.0,
            color: Colors.black,
            shadows: [BoxShadow(color: Colors.blueGrey, blurRadius: 20)],
          ),
          showSelectedLabels: false,
          showUnselectedLabels: false,
          unselectedItemColor: Colors.grey.shade400,
          elevation: 0,
        ),
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const SchoolManagementMainScreen(),
    );
  }
}
