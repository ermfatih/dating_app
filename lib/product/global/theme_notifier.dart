import 'package:dating_app/product/utils/shared_prefs.dart';
import 'package:flutter/material.dart';

class ThemeNotifier extends ChangeNotifier {
  late bool _isDark;
  late SharedPrefs _sharedPrefs;
  bool get isDark=>_isDark;

  ThemeNotifier(){
    _isDark = true;
    _sharedPrefs = SharedPrefs();
    getPreferences();
  }

  set isDark(bool value){
    _isDark=value;
    _sharedPrefs.setTheme(value);
    notifyListeners();
  }
  void getPreferences()async{
    _isDark=await _sharedPrefs.getTheme();
    notifyListeners();
  }
}

