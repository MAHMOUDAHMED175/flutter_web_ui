import 'package:flutter/material.dart';
import 'package:hello_world/controls/menu_controller.dart';
import 'package:hello_world/shared/app_colors.dart';
import 'package:hello_world/shared/app_responsive.dart';
import 'package:provider/provider.dart';

class HeadBar extends StatefulWidget {
  @override
  _HeadBarState createState() => _HeadBarState();
}

class _HeadBarState extends State<HeadBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      child: Row(
        children: [
          if (!AppResponsive.isDesktop(context))
            IconButton(
                icon: Icon(Icons.menu, color: AppColor.bgSideMenu),
                onPressed: Provider.of<MenuController>(context, listen: false)
                    .controlMenu),
          Text(
            "Dashboard",
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
          ),
          Spacer(),
          Row(
            children: [
              navIcon(icon: Icons.search),
              navIcon(icon: Icons.send),
              navIcon(icon: Icons.notifications),
            ],
          )
        ],
      ),
    );
  }

  Widget navIcon({icon}) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Icon(
        icon,
        color: AppColor.black,
      ),
    );
  }
}
