import 'package:flutter/material.dart';
import 'package:flutter_portfolio/screens/HomeScreen.dart';
import 'package:flutter_portfolio/screens/ProfileScreen.dart';
import 'package:flutter_portfolio/screens/ProjectsScreen.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 3, 
        child: Scaffold(
          appBar: AppBar.new(
            title: Text("Welcome Awsome One!", style: TextStyle(fontWeight: FontWeight.bold),),
            bottom: TabBar(tabs: [Tab(text: "Homepage",),Tab(text: "Profile",),Tab(text: "Projects",)]),
          ),
          body: TabBarView(children: [Homescreen(),ProfileScreen(),ProjectsScreen()]),
        )
      )
    );
  }
}
