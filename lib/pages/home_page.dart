import 'package:flutter/material.dart';
import 'package:hello_world/controls/menu_controller.dart';
import 'package:hello_world/pages/widgets/side_bar_menu.dart';
import 'package:hello_world/shared/app_colors.dart';
import 'package:hello_world/shared/app_responsive.dart';
import 'package:provider/provider.dart';
import 'dashboard/dashbord.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: SideBar(),
      key: Provider.of<MenuController>(context, listen: false).scaffuldKey,
      backgroundColor: AppColor.bgSideMenu,
      body: SafeArea(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //Side Menu
            if (AppResponsive.isDesktop(context)) Expanded(child: SideBar()),

            //Main Body
            Expanded(flex: 4, child: Dashbord())
          ],
        ),
      ),
    );
  }
}
