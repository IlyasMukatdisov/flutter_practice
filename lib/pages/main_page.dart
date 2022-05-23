import 'package:flutter/material.dart';
import 'package:flutter_practice/pages/nav_pages/account_page.dart';
import 'package:flutter_practice/pages/nav_pages/chat_page.dart';
import 'package:flutter_practice/pages/nav_pages/home_page.dart';
import 'package:flutter_practice/pages/nav_pages/schedule_page.dart';
import 'package:flutter_practice/res/colors/AppColors.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  var bottomNavigationBarList = [
    HomePage(),
    SchedulePage(),
    ChatPage(),
    AccountPage()
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
      body: bottomNavigationBarList[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: currentIndex,
          selectedItemColor: AppColors.mainColor,
          unselectedItemColor: AppColors.unselectedTabColor,
          onTap: onTap,
          items: [
            BottomNavigationBarItem(
                label: "Home",
                icon:
                    Icon(currentIndex == 0 ? Icons.home : Icons.home_outlined)),
            BottomNavigationBarItem(
                label: "Schedule",
                icon: Icon(currentIndex == 1
                    ? Icons.calendar_month
                    : Icons.calendar_month_outlined)),
            BottomNavigationBarItem(
                label: "Chat",
                icon: Icon(currentIndex == 2
                    ? Icons.chat_bubble
                    : Icons.chat_bubble_outline)),
            BottomNavigationBarItem(
                label: "Account",
                icon: Icon(
                    currentIndex == 3 ? Icons.person : Icons.person_outline)),
          ]),
    );
  }
}
