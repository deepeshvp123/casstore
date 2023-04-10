import 'package:casstore/listview/your_order(1).dart';
import 'package:casstore/views/dashboard.dart';
import 'package:casstore/views/history.dart';
import 'package:casstore/views/homepage.dart';
import 'package:casstore/views/profile.dart';

import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  List pages = [
    HomePage(),
    HistoryPage(),
    DashBordPage()
    //YourOrder()
    ,
    MyProfile(),
  ];

  int currentIndex = 0;
  void onTap(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: pages[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.white,
        onTap: (i) => onTap(i),
        selectedFontSize: 0, unselectedFontSize: 0,
        currentIndex: currentIndex,
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.grey.withOpacity(0.5),
        showUnselectedLabels: false,
        showSelectedLabels: false,
        elevation: 0, // hiding the nav line
        items: const [
          BottomNavigationBarItem(
            label: "Home",
            icon: Icon(
              Icons.home,
            ),
          ),
          BottomNavigationBarItem(
            label: "Bar",
            icon: Icon(
              Icons.replay,
            ),
          ),
          BottomNavigationBarItem(
            label: "Search",
            icon: Icon(
              Icons.apps_rounded,
            ),
          ),
          BottomNavigationBarItem(
            label: "Me",
            icon: Icon(
              Icons.person,
            ),
          )
        ],
      ),
    );
  }
}
