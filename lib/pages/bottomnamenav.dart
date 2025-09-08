import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:serviceproduction/pages/chat_page.dart';
import 'package:serviceproduction/pages/home.dart';
import 'package:serviceproduction/pages/order.dart';
import 'package:serviceproduction/pages/profile_page.dart';

class BottomNameNav extends StatefulWidget {
  const BottomNameNav({super.key});

  @override
  State<BottomNameNav> createState() => _BottomNameNavState();
}

class _BottomNameNavState extends State<BottomNameNav> {
  // Creating a list of pages that would go into the bottomnav...
  late List<Widget> pages;

  late Home home;
  late Order order;
  late ChatPage chatPage;
  late ProfilePage profilePage;

  int currentTabIndex = 0;

  //After the int currentTabIndex = 0, you will have to create initstate

  @override
  void initState() {
    home = Home();
    order = Order();
    chatPage = ChatPage();
    profilePage = ProfilePage();
    pages = [home, order, chatPage, profilePage];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CurvedNavigationBar(
        height: 70,
        backgroundColor: Colors.white,
        color: Colors.black,
        animationDuration: Duration(milliseconds: 500),
        onTap: (int index) {
          setState(() {
            currentTabIndex = index;
          });
        },
        items: [
          Icon(Icons.home_outlined, color: Colors.white, size: 25.0),
          Icon(Icons.shop_outlined, color: Colors.white, size: 25.0),
          Icon(Icons.chat_outlined, color: Colors.white, size: 25.0),
          Icon(Icons.person, color: Colors.white, size: 25.0),
        ],
      ),
      body: pages[currentTabIndex],
    );
  }
}
