import 'package:dating_app/features/home/discover/discover_view.dart';
import 'package:dating_app/features/home/message/messages_view.dart';
import 'package:dating_app/features/home/profile/profile_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> with SingleTickerProviderStateMixin{
  late final TabController _tabController;
  @override
  void initState() {
    //bu kod telefonun yatayda dönmesini kapatır
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitDown,
      DeviceOrientation.portraitUp
    ]);
    super.initState();
    _tabController=TabController(length: _MyTabViews.values.length, vsync: this);

  }
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(

      length: _MyTabViews.values.length,
      child: Scaffold(
        //appBar: AppBar(title: Text(_MyTabViews.values[_tabController.index].name),),
        bottomNavigationBar: Theme(
          data: Theme.of(context).copyWith(canvasColor: Colors.white),
          child: BottomNavigationBar(
            useLegacyColorScheme: false,
            currentIndex: _tabController.index,
            onTap: (value) {
              setState(() {
                _tabController.animateTo(value);
                value=_tabController.index;
              });
            },
            items: [
              ..._MyTabViews.values.map((e) => BottomNavigationBarItem(icon: Icon(e.icons[e.index]),label: e.name))
            ],
          ),
        ),
        body:TabBarView(
          physics: NeverScrollableScrollPhysics(),
          controller: _tabController,
          children: [
            DiscoverView(),
            MessagesView(),
            Container(),
            ProfileView(),
          ],
        ),

      ),
    );
  }
}
enum _MyTabViews{
  discover,
  messages,
  settings,
  profile
}
extension _EnumExtension on _MyTabViews{
  List<IconData> get icons =>[
    Icons.discord,
    Icons.message,
    Icons.settings,
    Icons.person
  ];
}
/**/