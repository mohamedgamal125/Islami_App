import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyProvider extends ChangeNotifier{

  String languageCode="en";
  ThemeMode modeApp=ThemeMode.light;

  void changeLanguage(String lanCode){

    languageCode=lanCode;
    notifyListeners();

  }

  void changeTheme(ThemeMode mode){
    modeApp=mode;
    notifyListeners();
  }

  String getBackground()
  {
    if(modeApp==ThemeMode.light)
      {
        return "Assets/images/bg3.png";
      }
    return "Assets/images/bg.png";
  }
}