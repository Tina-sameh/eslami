import 'package:flutter/cupertino.dart';

class LangProvider extends ChangeNotifier{
  String currentLocal="en";

  void setLang(String newLocale){
    currentLocal=newLocale;
    notifyListeners();
  }
}