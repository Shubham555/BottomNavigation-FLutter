import 'package:bottomnav/A.dart';
import 'package:bottomnav/B.dart';
import 'package:bottomnav/C.dart';
import 'package:bottomnav/D.dart';
import 'package:bottomnav/E.dart';
import 'package:fancy_bottom_navigation/fancy_bottom_navigation.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  MyHomePageState createState() {
    return new MyHomePageState();
  }
}

class MyHomePageState extends State<MyHomePage> {
  int currentIndex = 0;
  final Pages =[
    A(),B() ,C(),D()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('App Name'),
      ),
        body:  Container(
          child:  Pages[currentIndex],
        ),
        bottomNavigationBar: FancyBottomNavigation(
          tabs: [
            TabData(iconData: Icons.home, title: "Home"),
            TabData(iconData: Icons.data_usage, title: "Analysis"),
            TabData(iconData: Icons.camera, title: "AR"),
            TabData(iconData: Icons.file_download, title: "Downloads"),
//            TabData(iconData: Icons.account_circle, title: "Account"),
          ],
          onTabChangedListener: (position) {
            setState(() {
              currentIndex = position;
            });
          },
        )
    );
  }
}

void changePage(int position) {
}
