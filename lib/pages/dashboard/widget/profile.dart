import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hello_world/shared/app_colors.dart';

class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColor.white,
        borderRadius: BorderRadius.circular(10),
      ),
      padding: EdgeInsets.all(10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Row(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(1000),
                child: Image.asset("assets/user2.jpg", height: 60, width: 60),
              ),
              SizedBox(
                width: 10,
              ),
              Column(
                children: [
                  Text(
                    "Mahmoud moamen",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Text("Programmer")
                ],
              )
            ],
          ),
          Divider(thickness: 0.5, color: Colors.grey),
          employeeTasks("Task 1", "C"),
          employeeTasks("Task 2", "Dart"),
          employeeTasks("Task 3", "Php"),
          employeeTasks("Task 4", "Flutter"),
          employeeTasks("Task 5", "Html,Css"),
        ],
      ),
    );
  }

  Widget employeeTasks(text, value) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(text),
          Text(
            value,
            style: TextStyle(
                fontWeight: FontWeight.bold, color: AppColor.mainColor),
          )
        ],
      ),
    );
  }
}
