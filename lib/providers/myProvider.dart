import 'package:flutter/cupertino.dart';

class MyProvider extends ChangeNotifier{

  String languageCode="en";

  void changeLanguage(String lanCode){

    languageCode=lanCode;
    notifyListeners();

  }

}