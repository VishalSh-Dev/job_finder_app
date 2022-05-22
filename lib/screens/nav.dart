import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:job_finder_app/screens/home/home.dart';
import 'package:job_finder_app/screens/profile.dart';

import 'applied_job.dart';
import 'chat.dart';

class NavPage extends StatefulWidget {
  const NavPage({Key? key}) : super(key: key);

  @override
  State<NavPage> createState() => _NavPageState();
}

class _NavPageState extends State<NavPage> {
  final List pages = [
    HomePage(),
    AppliedJobs(),
    ChatScreen(),
    ProfilePage(),
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
      backgroundColor: Colors.grey[100],
      body: pages[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        selectedFontSize: 0,
        unselectedFontSize: 0,
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.grey[100],
        onTap: onTap,
        currentIndex: currentIndex,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.grey[500],
        showSelectedLabels: false,
        showUnselectedLabels: false,
        elevation: 0,
        items: [
          BottomNavigationBarItem(
            label: 'Home',
            icon: Icon(
              Icons.home,
              size: 25,
            ),
          ),
          BottomNavigationBarItem(
            label: 'Case',
            icon: Icon(
              Icons.cases_outlined,
              size: 25,
            ),
          ),
          BottomNavigationBarItem(
            label: 'Chat',
            icon: Icon(
              Icons.chat,
              size: 25,
            ),
          ),
          BottomNavigationBarItem(
            label: 'Profile',
            icon: Icon(
              Icons.person,
              size: 25,
            ),
          ),
        ],
      ),
    );
  }
}
