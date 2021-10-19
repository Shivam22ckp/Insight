import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:flutter/material.dart';
import 'package:insight/pages/Home.dart';
import 'package:insight/pages/Todo.dart';
import 'package:insight/pages/profile.dart';
import 'package:insight/pages/talk.dart';

class BottomNavy extends StatefulWidget {
  BottomNavy({Key? key}) : super(key: key);

  @override
  _BottomNavyState createState() => _BottomNavyState();
}

class _BottomNavyState extends State<BottomNavy> {
  int currentTabIndex = 0;
  late List<Widget> pages;

  late Widget currentPage;

  late Home homepage;

  late ProfilePage getProfilePage;
  late Talk talk;
  late Todo todo;

  @override
  void initState() {
    super.initState();

    homepage = Home();

    getProfilePage = ProfilePage();
    talk = Talk();
    todo = Todo();
    pages = [homepage, todo, talk, getProfilePage];
    currentPage = homepage;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavyBar(
        animationDuration: Duration(microseconds: 1000),
        selectedIndex: currentTabIndex,
        onItemSelected: (int index) {
          setState(() {
            currentTabIndex = index;
          });
        },
        items: <BottomNavyBarItem>[
          BottomNavyBarItem(
            icon: Icon(Icons.home),
            title: Text("Home"),
            activeColor: Colors.blueAccent,
            inactiveColor: Colors.black,
          ),
          BottomNavyBarItem(
            icon: Icon(Icons.list),
            title: Text("ToDo"),
            activeColor: Colors.orangeAccent,
            inactiveColor: Colors.black,
          ),
          BottomNavyBarItem(
            icon: Icon(Icons.chat),
            title: Text("Chat"),
            activeColor: Colors.redAccent,
            inactiveColor: Colors.black,
          ),
          BottomNavyBarItem(
            icon: Icon(Icons.person),
            title: Text("Profile"),
            activeColor: Colors.redAccent,
            inactiveColor: Colors.black,
          ),
        ],
      ),
      body: pages[currentTabIndex],
    );
  }
}
