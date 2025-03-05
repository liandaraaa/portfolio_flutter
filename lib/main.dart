import 'package:flutter/material.dart';
import 'package:flutter_portfolio/screens/HomeScreen.dart';
import 'package:flutter_portfolio/screens/ProfileScreen.dart';
import 'package:flutter_portfolio/screens/ProjectsScreen.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatefulWidget {
  const MainApp({Key? key}) : super(key: key);
  @override
  State<MainApp> createState() => _MainAppState();
}
class _MainAppState extends State<MainApp>  with SingleTickerProviderStateMixin{

  late TabController _tabController;
  bool transitioning = false;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(
        length: 3, vsync: this, animationDuration: Duration(seconds: 2))
      ..addListener(_handleTabIndexChanged);
  }

  void _handleTabIndexChanged() {
    setState(() {
      transitioning = _tabController.indexIsChanging;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: 
      DefaultTabController(
        length: 3, 
        child: 
        Scaffold(
          appBar: AppBar(
            title: Text("Welcome Awsome One!", style: TextStyle(fontWeight: FontWeight.bold),),
            bottom: TabBar(
              controller: _tabController,
              tabs: [Tab(text: "Home",),Tab(text: "Profile",),Tab(text: "Projects",)]),
          ),
          body: TabBarView(
            controller: _tabController,
            children: [Homescreen(tabController: _tabController,),ProfileScreen(),ProjectsScreen()]),
        )
      )
    );
  }


}
