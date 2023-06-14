import 'package:dating_app/core/device/constants.dart';
import 'package:dating_app/core/extensions/context_extension.dart';
import 'package:dating_app/features/home/tab/tab_bar_view.dart';
import 'package:dating_app/product/global/theme_notifier.dart';
import 'package:dating_app/product/init/theme/app_theme.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';


void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  runApp(
      EasyLocalization(
      child: MyApp(),
      supportedLocales: AppConstant.supportedLocales
      ,path: AppConstant.langPath)
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => ThemeNotifier(),
      builder: (context, child) {
        return MaterialApp(
          locale: context.locale,
          supportedLocales: context.supportedLocales,
          localizationsDelegates: context.localizationDelegates,
          debugShowCheckedModeBanner: false,
          title: 'Dating App',
          themeMode: context.watch<ThemeNotifier>().isDark ? ThemeMode.light:ThemeMode.dark,
          themeAnimationCurve: Curves.easeIn,
          themeAnimationDuration: Duration(seconds: 2),
          darkTheme: ThemeManager.createTheme(AppThemeDark()),
          theme: ThemeManager.createTheme(AppThemeLight()),
          home: const MyHomePage(),
        );
      },
    );
  }
}
