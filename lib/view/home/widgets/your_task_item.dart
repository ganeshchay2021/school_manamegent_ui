
import 'package:flutter/material.dart';

class YourTaskItem extends StatelessWidget {
  final int? days;
  final String? topic;
  final Color? colors;
  const YourTaskItem({
    super.key,
    required this.days,
    required this.topic,
    required this.colors,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      margin: EdgeInsets.only(right: 15),
      height: 160,
      width: 175,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: colors!.withOpacity(0.05),
      ),
      alignment: Alignment.center,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Deadline",
            style: TextStyle(fontSize: 15, color: Colors.black26),
          ),
          Row(
            children: [
              CircleAvatar(radius: 4, backgroundColor: Colors.red),
              SizedBox(width: 5),
              Text(
                "$days days left",
                style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.w600,
                  color: Colors.black54,
                ),
              ),
            ],
          ),
          SizedBox(height: 10),
          Text(
            topic!,
            maxLines: 3,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
              fontSize: 18,
              color: Colors.black54,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
