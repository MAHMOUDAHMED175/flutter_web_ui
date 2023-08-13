import 'package:flutter/material.dart';
import 'package:hello_world/shared/app_colors.dart';

class SideBar extends StatefulWidget {
  @override
  _SideBarState createState() => _SideBarState();
}

class _SideBarState extends State<SideBar> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      elevation: 0,
      child: Container(
        color: AppColor.bgSideMenu,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              child: Text(
                "MAIN WEB",
                style: TextStyle(
                    color: AppColor.mainColor,
                    fontSize: 25,
                    fontWeight: FontWeight.bold),
              ),
            ),
            DrawerList(
              icon: "assets/menu_home.png",
              title: "Dashbord",
              press: () {},
            ),
            DrawerList(
              title: "Recruitment",
              icon: "assets/menu_recruitment.png",
              press: () {},
            ),
            DrawerList(
              title: "Onboarding",
              icon: "assets/menu_onboarding.png",
              press: () {},
            ),
            DrawerList(
              title: "Reports",
              icon: "assets/menu_report.png",
              press: () {},
            ),
            DrawerList(
              title: "Calendar",
              icon: "assets/menu_calendar.png",
              press: () {},
            ),
            DrawerList(
              title: "Settings",
              icon: "assets/menu_settings.png",
              press: () {},
            ),
            Spacer(),
            Image.asset("assets/sidebar_image.png")
          ],
        ),
      ),
    );
  }
}

class DrawerList extends StatelessWidget {
  final String title, icon;
  final VoidCallback press;

  const DrawerList({Key key, this.title, this.icon, this.press})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      horizontalTitleGap: 0.0,
      leading: Image.asset(
        icon,
        color: AppColor.white,
        height: 16,
      ),
      title: Text(
        title,
        style: TextStyle(color: AppColor.white),
      ),
      onTap: press,
    );
  }
}
