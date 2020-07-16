import 'package:flutter/material.dart';
import 'package:tabs_inapp/tabs/first.dart';
import 'package:tabs_inapp/tabs/second.dart';
import 'package:tabs_inapp/tabs/third.dart';

void main() {
  runApp(MaterialApp(title: "Tabs Inapp", home: MyHome()));
}

class MyHome extends StatefulWidget {
  @override
  _MyHomeState createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> with SingleTickerProviderStateMixin {
  ///
  //setting up the tabs and
  ///
  ///cteating a tab controler
  ///
  ///

  TabController controller;

  @override
  void initState() {
    super.initState();

    //Initialize the tab controller
    controller = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    //Dispose of the tab controller
    controller.dispose();
    super.dispose();
  }

  TabBar getTabBar() {
    return TabBar(
      tabs: <Tab>[
        Tab(
          //setting the icon on the tab
          icon: Icon(Icons.favorite),
        ),
        Tab(
          //setting the icon on the tab
          icon: Icon(Icons.adb),
        ),
        Tab(
          //setting the icon on the tab
          icon: Icon(Icons.airline_seat_flat),
        ),
      ],

      //setting up the controller
      controller: controller,
    );
  }

  TabBarView getTabBarView(var tabs) {
    return TabBarView(
      //adding the tabs as widgets

      children: tabs,

      //set the controller
      controller: controller,
    );
  }

  ///
  ///setup the page by setting tabs in the body

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Tabs in the App"),

        backgroundColor: Colors.green,

        //setting the bottomm property of tabbar to include a tabbar
        bottom: getTabBar(),
      ),
      body: getTabBarView(
        <Widget>[
          First(),
          Second(),
          Third(),
        ],
      ),
    );
  }
}
