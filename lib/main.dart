import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:islami_app/HomePage/HomePage.dart';
import 'package:islami_app/Theming/MyThemeData.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: Home.routeName,
      routes: {
        Home.routeName: (context) => Home(),
      },
      debugShowCheckedModeBanner: false,
      theme: MyThemeData.liteMode,
      darkTheme: MyThemeData.darkTheme,

    );
  }
}
