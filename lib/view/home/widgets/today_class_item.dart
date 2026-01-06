import 'package:flutter/material.dart';

import '../../../constant/colors.dart';

class TodayClassItem extends StatelessWidget {
  final String name;
  final String time;
  final String classLocation;
  final String faculty;
  final String profile;


  const TodayClassItem({
    super.key,
    required this.name,
    required this.time,
    required this.classLocation,
    required this.faculty,
    required this.profile,

  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      height: 110,
      decoration: BoxDecoration(
        color: kBackground,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        children: [
          Expanded(
            flex: 1,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(time, style: TextStyle(fontWeight: FontWeight.w800)),
                Text(
                  "AM",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(width: 5),
          Container(width: 2, color: Colors.grey.withOpacity(0.5)),
          SizedBox(width: 10),
          Expanded(
            flex: 3,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "The Basic of Topography |||",
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(fontSize: 16),
                ),
                Row(
                  children: [
                    Icon(Icons.location_on, size: 20, color: Colors.grey),
                    SizedBox(width: 5),
                    Expanded(
                      child: Text(
                        "Room C1, Faculty of Art & Design Building",
                        overflow: TextOverflow.ellipsis,
                        maxLines: 1,
                        style: TextStyle(fontSize: 16, color: Colors.grey),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Container(
                      height: 22,
                      width: 22,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: NetworkImage(
                            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTRAIDofZmj1m9r3XF2F5HcE6fpIHmsifPKzw&s",
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 5),
                    Text(
                      "Disha Pathani",
                      overflow: TextOverflow.ellipsis,
                      maxLines: 1,
                      style: TextStyle(fontSize: 15, color: Colors.grey),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
