import 'package:flutter/material.dart';
import 'package:school_managementui_app/constant/colors.dart';
import 'package:school_managementui_app/model/task_model.dart';

class TodayCalendar extends StatefulWidget {
  const TodayCalendar({super.key});

  @override
  State<TodayCalendar> createState() => _TodayCalendarState();
}

class _TodayCalendarState extends State<TodayCalendar> {
  List<Map<String, dynamic>> weeks = [
    {"day": "S", "date": 7, "isActive": false},
    {"day": "M", "date": 8, "isActive": false},
    {"day": "T", "date": 9, "isActive": false},
    {"day": "W", "date": 10, "isActive": true},
    {"day": "T", "date": 11, "isActive": false},
    {"day": "F", "date": 12, "isActive": false},
    {"day": "S", "date": 13, "isActive": false},
  ];
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            height: size.height,
            alignment: Alignment.topCenter,
            decoration: BoxDecoration(color: kBackground),
            child: SafeArea(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Row(
                    children: [
                      Icon(Icons.calendar_today, color: Colors.grey),
                      SizedBox(width: 10),
                      RichText(
                        text: TextSpan(
                          text: "Oct ",
                          style: TextStyle(
                            fontSize: 30,
                            color: textColor,
                            fontWeight: FontWeight.w900,
                          ),
                          children: [
                            TextSpan(
                              text: "2019",
                              style: TextStyle(
                                fontSize: 22,
                                fontWeight: FontWeight.normal,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Spacer(),
                  Text(
                    "Today",
                    style: TextStyle(
                      color: secondTextColor,
                      fontSize: 18,
                      letterSpacing: -0.5,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            top: 100,
            child: Container(
              padding: EdgeInsets.only(top: 18),
              height: size.height - 150,
              width: size.width,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(50),
                  topLeft: Radius.circular(50),
                ),
              ),
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsetsGeometry.symmetric(horizontal: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: List.generate(weeks.length, (index) {
                        return Container(
                          margin: EdgeInsets.only(right: index == 6 ? 0 : 10),
                          padding: EdgeInsets.all(5),
                          alignment: Alignment.center,
                          width: 40,
                          decoration: BoxDecoration(
                            color: weeks[index]["isActive"] == true
                                ? secondTextColor
                                : Colors.transparent,
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Column(
                            children: [
                              Text(
                                weeks[index]["day"],
                                style: TextStyle(
                                  fontSize: weeks[index]["isActive"] == true
                                      ? 20
                                      : 18,
                                  color: Colors.grey.shade400,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              Text(
                                "${weeks[index]['date']}",
                                style: TextStyle(
                                  fontSize: weeks[index]["isActive"] == true
                                      ? 22
                                      : 20,
                                  color: weeks[index]["isActive"] == true
                                      ? Colors.white
                                      : Colors.black,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        );
                      }),
                    ),
                  ),
                  SizedBox(height: 20),
                  Expanded(
                    child: SingleChildScrollView(
                      child: Column(
                        children: List.generate(tasks.length, (index) {
                          final myTasks = tasks[index];
                          return Container(
                            margin: EdgeInsets.only(bottom: 20),
                            child: Column(
                              children: [
                                Padding(
                                  padding: EdgeInsetsGeometry.only(right: 20),
                                  child: Row(
                                    children: [
                                      Container(
                                        height: 13,
                                        width: 25,
                                        decoration: BoxDecoration(
                                          color: Colors.amber,
                                          borderRadius: BorderRadius.horizontal(
                                            right: Radius.circular(15),
                                          ),
                                        ),
                                      ),
                                      SizedBox(width: 15),
                                      RichText(
                                        text: TextSpan(
                                          text: myTasks.currentTime,
                                          style: TextStyle(
                                            fontWeight: FontWeight.w800,
                                            color: Colors.black,
                                            fontSize: 18,
                                          ),
                                          children: [
                                            TextSpan(
                                              text: " AM",
                                              style: TextStyle(
                                                fontWeight: FontWeight.normal,
                                                color: Colors.grey,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Spacer(),
                                      Text(myTasks.remainingTime),
                                    ],
                                  ),
                                ),
                                SizedBox(height: 10),
                                Padding(
                                  padding: EdgeInsets.symmetric(horizontal: 20),
                                  child: Container(
                                    padding: EdgeInsets.all(20),
                                    width: size.width,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(15),
                                      border: Border.all(
                                        color: Colors.black26,
                                        width: 1,
                                      ),
                                    ),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          myTasks.title,
                                          maxLines: 1,
                                          overflow: TextOverflow.ellipsis,
                                          style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        Text(
                                          myTasks.subtitle,
                                          maxLines: 1,
                                          overflow: TextOverflow.ellipsis,
                                          style: TextStyle(
                                            fontSize: 16,
                                            color: Colors.grey,
                                          ),
                                        ),
                                        SizedBox(height: 15),
                                        Row(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            CircleAvatar(
                                              radius: 14,
                                              backgroundImage: NetworkImage(
                                                myTasks.profileImage,
                                              ),
                                            ),
                                            SizedBox(width: 10),
                                            Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  myTasks.name,
                                                  style: TextStyle(
                                                    fontSize: 16,
                                                    height: 0,
                                                    color: Colors.black,
                                                    fontWeight: FontWeight.w500,
                                                    letterSpacing: 0,
                                                  ),
                                                ),
                                                Text(
                                                  myTasks.id,
                                                  style: TextStyle(
                                                    fontSize: 15,
                                                    color: Colors.black38,
                                                    letterSpacing: 0,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                        SizedBox(height: 15),
                                        Row(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Icon(
                                              Icons.location_on,
                                              color: Colors.grey,
                                            ),
                                            SizedBox(width: 10),
                                            Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  myTasks.location,
                                                  style: TextStyle(
                                                    fontSize: 16,
                                                    height: 0,
                                                    color: Colors.black,
                                                    fontWeight: FontWeight.w500,
                                                    letterSpacing: 0,
                                                  ),
                                                ),
                                                Text(
                                                  myTasks.room,
                                                  style: TextStyle(
                                                    fontSize: 15,
                                                    color: Colors.black38,
                                                    letterSpacing: 0,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          );
                        }),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
