import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hello_world/controls/menu_controller.dart';
import 'package:hello_world/pages/home_page.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Website demo',
        debugShowCheckedModeBanner: false,
        theme: ThemeData.dark().copyWith(
            textTheme:
                GoogleFonts.poppinsTextTheme(Theme.of(context).textTheme)),
        home: MultiProvider(
          providers: [
            ChangeNotifierProvider(create: (context) => MenuController())
          ],
          child: HomePage(),
        ));
  }
}
