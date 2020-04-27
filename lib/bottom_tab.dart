import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:newsapp/home.dart';

class BottomTab extends StatefulWidget {
  @override
  _BottomTabState createState() => _BottomTabState();
}

class _BottomTabState extends State<BottomTab> {
  int _selectedTabIndex = 0;

  List _pages = [
    Home(),
    Text('tab 2'),
    Text('tab 3'),
    Text('tab 4'),
    Text('tab 5'),
  ];

  _changeIndex(int index) {
    setState(() {
      _selectedTabIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: _pages[_selectedTabIndex]
      ),
      bottomNavigationBar: buildBottomNavigationBar()
    );
  }

  BottomNavigationBar buildBottomNavigationBar() {
    return BottomNavigationBar(
      backgroundColor: Colors.white,
      type: BottomNavigationBarType.fixed,
      items: [
          BottomNavigationBarItem(
            icon: Container(
              padding: EdgeInsets.only(top: 8),
              child: SvgPicture.asset('assets/images/home.svg')),
            title: Text('Business'),
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset('assets/images/discover.svg'),
            title: Text('Business'),
          ),
          BottomNavigationBarItem(
            icon: Container(
              padding: EdgeInsets.all(20),
              margin: EdgeInsets.only(bottom: 10),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Color(0xff59C2FF),
              ),
              child: SvgPicture.asset('assets/images/plus.svg')),
            title: Text('School'),
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset('assets/images/alert.svg'),
            title: Text('Star'),
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset('assets/images/person.svg'),
            title: Text('User'),
          ),
      ],
      onTap: _changeIndex,
      currentIndex: _selectedTabIndex,
      showSelectedLabels: false,
      showUnselectedLabels: false,
    );
  }
}