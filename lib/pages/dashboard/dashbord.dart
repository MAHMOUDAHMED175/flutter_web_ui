import 'package:flutter/material.dart';
import 'package:hello_world/pages/dashboard/widget/calender_widget.dart';
import 'package:hello_world/pages/dashboard/widget/headbar.dart';
import 'package:hello_world/pages/dashboard/widget/notfication.dart';
import 'package:hello_world/pages/dashboard/widget/profile.dart';
import 'package:hello_world/pages/dashboard/widget/table_of_emp_data.dart';
import 'package:hello_world/shared/app_colors.dart';
import 'package:hello_world/shared/app_responsive.dart';

class Dashbord extends StatefulWidget {
  @override
  _DashbordState createState() => _DashbordState();
}

class _DashbordState extends State<Dashbord> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
          color: AppColor.bgColor, borderRadius: BorderRadius.circular(30)),
      child: Column(
        children: [
          HeadBar(),
          Expanded(
              child: SingleChildScrollView(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  flex: 2,
                  child: Container(
                    child: Column(
                      children: [
                        Notfication(),
                        SizedBox(
                          height: 20,
                        ),
                        if (AppResponsive.isMobile(context)) ...{
                          CalenderWidget(),
                          SizedBox(
                            height: 20,
                          ),
                          Profile(),
                        },
                        TableOfEmpData()
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                if (!AppResponsive.isMobile(context))
                  Expanded(
                      child: Container(
                    margin: EdgeInsets.symmetric(horizontal: 10),
                    child: Column(
                      children: [
                        CalenderWidget(),
                        SizedBox(
                          height: 20,
                        ),
                        Profile(),
                      ],
                    ),
                  ))
              ],
            ),
          ))
        ],
      ),
    );
  }
}
