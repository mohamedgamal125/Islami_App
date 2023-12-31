import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:islami_app/Tabs/ahadeth_tab.dart';
import 'package:islami_app/Tabs/quran_tab.dart';
import 'package:islami_app/Tabs/radio_tab.dart';
import 'package:islami_app/Tabs/sebha_tab.dart';
import 'package:islami_app/Tabs/settings_tab.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islami_app/Theming/MyThemeData.dart';
import 'package:islami_app/providers/myProvider.dart';
import 'package:provider/provider.dart';

class Home extends StatefulWidget {
  static const String routeName = "Home";

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int index = 0;

  @override
  Widget build(BuildContext context) {
    var pro=Provider.of<MyProvider>(context);
    return Stack(
      children: [
        Image.asset(
          pro.getBackground(
          ),
          width: double.infinity,
          fit: BoxFit.fill,
        ),
        Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            elevation: 0,
            title: Text(AppLocalizations.of(context)!.appTitle,
                style: Theme.of(context).textTheme.bodyLarge),
            centerTitle: true,
            backgroundColor: Colors.transparent,
          ),
          body: tabs[index],
          bottomNavigationBar: BottomNavigationBar(
            onTap: (value) {
              index = value;
              setState(() {});
            },
            currentIndex: index,
            items: [
              BottomNavigationBarItem(
                icon: ImageIcon(AssetImage("Assets/images/moshaf_blue.png")),
                label: AppLocalizations.of(context)!.quran,
                backgroundColor: MyThemeData.primaryColor,
              ),
              BottomNavigationBarItem(
                icon: ImageIcon(AssetImage("Assets/images/sebha_blue.png")),
                label: AppLocalizations.of(context)!.sebha,
                backgroundColor: MyThemeData.primaryColor,
              ),
              BottomNavigationBarItem(
                icon: ImageIcon(AssetImage("Assets/images/quran.png")),
                label: AppLocalizations.of(context)!.ahdeth,
                backgroundColor: MyThemeData.primaryColor,
              ),
              BottomNavigationBarItem(
                icon: ImageIcon(AssetImage("Assets/images/radio_blue.png")),
                label: AppLocalizations.of(context)!.radio,
                backgroundColor: MyThemeData.primaryColor,
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.settings),
                label: AppLocalizations.of(context)!.settings,
                backgroundColor: MyThemeData.primaryColor,
              ),
            ],
          ),
        ),
      ],
    );
  }

  List<Widget> tabs = [
    QuranTab(),
    SebhaTab(),
    AhadethTab(),
    RadioTab(),
    Settings()
  ];
}
