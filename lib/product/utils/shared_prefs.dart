import 'package:shared_preferences/shared_preferences.dart';

class SharedPrefs{
  static const String _prefTheme='app_theme';

  Future<void> setTheme(bool value)async{
    SharedPreferences preferences=await SharedPreferences.getInstance();
    preferences.setBool(_prefTheme, value);
  }
  Future<bool> getTheme() async{
    SharedPreferences preferences=await SharedPreferences.getInstance();
    return preferences.getBool(_prefTheme) ?? false;
  }
}