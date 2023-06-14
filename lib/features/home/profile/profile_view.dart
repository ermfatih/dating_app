import 'package:dating_app/core/device/constants.dart';
import 'package:dating_app/core/extensions/context_extension.dart';
import 'package:dating_app/product/constant/lottie_items.dart';
import 'package:dating_app/product/global/theme_notifier.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:provider/provider.dart';

class ProfileView extends StatefulWidget {
  const ProfileView({Key? key}) : super(key: key);

  @override
  State<ProfileView> createState() => _ProfileViewState();
}

class _ProfileViewState extends State<ProfileView> with TickerProviderStateMixin{
  late final AnimationController _animationController;

  @override
  void initState() {
    super.initState();
    _animationController=AnimationController(vsync: this);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile'),
        actions: [
          TextButton(onPressed: () {
            context.setLocale(AppConstant.EN_LOCALE);
          }, child: Text(context.locale.languageCode,style: Theme.of(context).textTheme.headlineSmall,)),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Consumer<ThemeNotifier>(
              builder: (context, value, child) {
                return InkWell(
                    onTap: () {
                      value.isDark ? value.isDark = false : value.isDark = true;
                      _animationController.animateTo(value.isDark ? 0.5:1,duration: Duration(seconds: 1));
                    },
                    child: Lottie.asset(LottieItems.themeChange.lottiePath,controller: _animationController,));
              },

            ),
          ),
          IconButton(onPressed: () {}, icon: Icon(Icons.settings))],
      ),
      body: Padding(
        padding: context.paddingLowAll,
        child: Center(
          child: Column(
            children: [
              Stack(
                alignment: Alignment.topRight,
                children: [
                  CircleAvatar(
                      radius: context.dynamicHeight(.14),
                      child: Image.asset('asset/png/human.png')),
                  FloatingActionButton(onPressed: () {}, child: Icon(Icons.add, size: 30,),)
                ],
              ),
              Text('İsim ve yaş bilgisi', style: context.textTheme.headlineMedium,)
            ],
          ),
        ),
      ),
    );
  }
}
