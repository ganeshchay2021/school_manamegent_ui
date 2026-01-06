import 'package:flutter/material.dart';
import 'package:school_managementui_app/constant/colors.dart';
import 'package:school_managementui_app/view/home/widgets/today_class_item.dart';
import 'package:school_managementui_app/view/home/widgets/your_task_item.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: 30, vertical: 30),
            decoration: BoxDecoration(color: kheaderColor),
            child: SafeArea(
              child: Column(
                children: [
                  Container(
                    alignment: Alignment.centerRight,
                    child: RichText(
                      text: TextSpan(
                        style: TextStyle(color: Colors.black),
                        children: [
                          TextSpan(
                            text: "Wed",
                            style: TextStyle(
                              fontWeight: FontWeight.w900,
                              letterSpacing: 0,
                            ),
                          ),
                          TextSpan(
                            text: " 10 Oct",
                            style: TextStyle(
                              fontWeight: FontWeight.w300,
                              letterSpacing: -1,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: 45,
                        width: 45,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          border: Border.all(color: Colors.white, width: 1.5),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.blue.withOpacity(0.2),
                              blurRadius: 5,
                              spreadRadius: 5,
                              offset: Offset(0, 5),
                            ),
                          ],
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: NetworkImage(
                              "https://akm-img-a-in.tosshub.com/indiatoday/images/story/202507/sara-arjun-dhurandhar-074535363-3x4.jpg?VersionId=SUBjJ0s6RGVJzn_aqP15FQj2_qOzDU9N",
                            ),
                          ),
                        ),
                      ),
                      SizedBox(width: 20),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            "Hi Sara Arjun",
                            style: TextStyle(
                              fontSize: 27,
                              color: textColor,
                              letterSpacing: -0.5,
                              fontWeight: FontWeight.w900,
                            ),
                          ),
                          SizedBox(height: 5),
                          Text(
                            "Here is the list of Schedule\nyou need to check...",
                            style: TextStyle(
                              color: textColor.withOpacity(0.5),
                              height: 1.5,
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
          Positioned(
            top: 200,
            child: Container(
              // padding: EdgeInsets.symmetric(horizontal: 20),
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(50),
                  topRight: Radius.circular(50),
                ),
              ),
              child: ListView(
                children: [
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: Column(
                      children: [
                        commonTextWdget(
                          text: "Today Class",
                          num: "(3)",
                          onTap: () {},
                        ),
                        SizedBox(height: 10),
                        TodayClassItem(
                          name: "Disha Pathani",
                          time: "07:00",
                          classLocation:
                              "Room C1, Faculty of Art & Design Building",
                          faculty: "The Basic of Topography |||",
                          profile:
                              "https://blog-res.admitkard.com/blog/wp-content/uploads/2023/06/22145055/Slide-0-Photo-from-Dishas-Instagram.png",
                        ),
                        SizedBox(height: 10),
                        TodayClassItem(
                          name: "Sara Ali Khan",
                          time: "09:30",
                          classLocation:
                              "Room C1, Faculty of Art & Design Building",
                          faculty: "Design Sciology:Priciple of Arts",
                          profile:
                              "https://image.tmdb.org/t/p/w500/nRtF9kNgIt9q52jy89cyZBimUPs.jpg",
                        ),
                        SizedBox(height: 10),
                        commonTextWdget(
                          text: "Your Tasks",
                          num: "(4)",
                          onTap: () {},
                        ),
                      ],
                    ),
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Padding(
                      padding: EdgeInsetsGeometry.only(left: 20),
                      child: Row(
                        children: [
                          YourTaskItem(
                            days: 3,
                            topic: "The Basic of Topography |||",
                            colors: Colors.red,
                          ),
                          YourTaskItem(
                            days: 10,
                            topic: "Design Sciology:Priciple of Arts",
                            colors: Colors.blue,
                          ),
                          YourTaskItem(
                            days: 10,
                            topic: "Design Sciology:Priciple of Arts",
                            colors: Colors.blue,
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  //common Text Widget
  Widget commonTextWdget({
    required String text,
    required String num,
    required VoidCallback onTap,
  }) {
    return Row(
      children: [
        RichText(
          text: TextSpan(
            style: TextStyle(color: Colors.black),
            children: [
              TextSpan(
                text: text.toUpperCase(),
                style: TextStyle(fontWeight: FontWeight.bold, letterSpacing: 0),
              ),
              TextSpan(
                text: num,
                style: TextStyle(
                  fontWeight: FontWeight.w300,
                  letterSpacing: 0,
                  color: Colors.grey,
                ),
              ),
            ],
          ),
        ),
        Spacer(),
        TextButton(
          onPressed: onTap,
          child: Text("See All", style: TextStyle(color: secondTextColor)),
        ),
      ],
    );
  }
}
