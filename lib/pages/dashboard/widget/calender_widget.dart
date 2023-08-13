import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hello_world/shared/app_colors.dart';
import 'package:intl/intl.dart';
import 'package:table_calendar/table_calendar.dart';

class CalenderWidget extends StatefulWidget {
  @override
  _CalenderWidgetState createState() => _CalenderWidgetState();
}

class _CalenderWidgetState extends State<CalenderWidget> {
  DateTime _dateTime = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "${DateFormat("MMM, yyyy").format(_dateTime)}",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              Row(
                children: [
                  InkWell(
                    onTap: () {
                      setState(() {
                        _dateTime =
                            DateTime(_dateTime.year, _dateTime.month - 1);
                      });
                    },
                    child: Icon(Icons.chevron_left, color: AppColor.black),
                  ),
                  InkWell(
                    onTap: () {
                      setState(() {
                        _dateTime =
                            DateTime(_dateTime.year, _dateTime.month + 1);
                      });
                    },
                    child: Icon(Icons.chevron_right, color: AppColor.black),
                  )
                ],
              )
            ],
          ),
          SizedBox(
            height: 10,
          ),
          TableCalendar(
            focusedDay: _dateTime,
            firstDay: DateTime.utc(2009),
            lastDay: DateTime.utc(2050),
            headerVisible: false,
            onFormatChanged: (result) {},
            daysOfWeekStyle: DaysOfWeekStyle(
                dowTextFormatter: (date, local) {
                  return DateFormat("EEE").format(date).toUpperCase();
                },
                weekdayStyle: TextStyle(fontWeight: FontWeight.bold),
                weekendStyle:
                    TextStyle(fontWeight: FontWeight.bold, color: Colors.red)),
            calendarStyle: CalendarStyle(
              todayDecoration: BoxDecoration(
                  color: AppColor.mainColor, shape: BoxShape.circle),
              markerDecoration: BoxDecoration(
                  color: AppColor.mainColor, shape: BoxShape.circle),
            ),
            onPageChanged: (theDate) {
              _dateTime = theDate;
              setState(() {});
            },
          )
        ],
      ),
    );
  }
}
