import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:islami_app/Tabs/ahadeth_tab.dart';
import 'package:islami_app/Tabs/quran_tab.dart';
import 'package:islami_app/Tabs/radio_tab.dart';
import 'package:islami_app/Tabs/sebha_tab.dart';
import 'package:islami_app/Tabs/settings_tab.dart';
import 'package:islami_app/Theming/MyThemeData.dart';

class Home extends StatefulWidget {
  static const String routeName = "Home";

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int index=0;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(
          "Assets/images/bg3.png",
          width: double.infinity,
          fit: BoxFit.fill,
        ),
        Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            elevation: 0,
            title: Text("Islame", style: Theme.of(context).textTheme.bodyLarge),
            centerTitle: true,
            backgroundColor: Colors.transparent,
          ),

          body: tabs[
            index
          ],

          bottomNavigationBar: BottomNavigationBar(
            onTap: (value){
              index=value;
              setState(() {

              });
            },
            currentIndex: index,
            items: [
              BottomNavigationBarItem(
                icon: ImageIcon(AssetImage("Assets/images/radio_blue.png")),
                label: "Radio ",
                backgroundColor: MyThemeData.primaryColor,
              ),
              BottomNavigationBarItem(
                icon: ImageIcon(AssetImage("Assets/images/sebha_blue.png")),
                label: "Sebha",
                backgroundColor: MyThemeData.primaryColor,

              ),
              BottomNavigationBarItem(
                icon: ImageIcon(AssetImage("Assets/images/quran.png")),
                label: "Quran",
                backgroundColor: MyThemeData.primaryColor,

              ),
              BottomNavigationBarItem(
                icon:ImageIcon(AssetImage("Assets/images/moshaf_blue.png")),
                label: "Moshaf",
                  backgroundColor: MyThemeData.primaryColor,

              ),



              BottomNavigationBarItem(
                icon: Icon(Icons.settings),
                label: "Settings",
                backgroundColor: MyThemeData.primaryColor,

              ),
            ],
          ),
        ),
      ],
    );
  }

  List<Widget>tabs=[
    QuranTab(),
    SebhaTab(),
    AhadethTab(),
    RadioTab(),
    Settings()
  ];
}
