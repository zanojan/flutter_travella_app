import 'package:circle_nav_bar/circle_nav_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_travella_app/screen/home/detail/detail_chatbot.dart';
import 'package:flutter_travella_app/screen/home/home_screen.dart';
import 'package:flutter_travella_app/screen/settings/setting_screen.dart';

class Navbar extends StatefulWidget {
  const Navbar({super.key});

  @override
  State<Navbar> createState() => _NavbarState();
}

class _NavbarState extends State<Navbar> {
  int _indexNavBar = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: switch (_indexNavBar) {
        0 => HomeScreen(),
        1 => DetailChatbot(),
        _ => SettingScreen(),
      },
      bottomNavigationBar: CircleNavBar(
        activeIndex: _indexNavBar,
        onTap: (index) {
          setState(() {
            _indexNavBar = index;
          });
        },
        activeIcons: [
          Icon(Icons.home_filled, color: Color(0xff7B5131)),
          Icon(Icons.chat, color: Color(0xff7B5131)),
          Icon(Icons.settings, color: Color(0xff7B5131)),

        ],
        inactiveIcons: [
          Text('Home', style: TextStyle(color: Color(0xff7B5131))),
          Text('Chat Bot', style: TextStyle(color: Color(0xff7B5131))),
          Text('Settings', style: TextStyle(color: Color(0xff7B5131))),
        ],
        color: Colors.white,
        circleColor: Colors.white,
        height: 60,
        circleWidth: 60,
        shadowColor: Color(0xffdedede),
        circleShadowColor: Color(0xffdedede),
        elevation: 10,
        tabCurve:Easing.standardAccelerate,

      ),
      // bottomNavigationBar: BottomNavigationBar(
      //  currentIndex: _indexNavBar,
      //  onTap: (index) {
      //   setState(() {
      //     _indexNavBar = index;
      //   });
      //  },
      //   items: [
      //     BottomNavigationBarItem(
      //       icon: Image.asset('assets/home_icon.png', width: 24, height: 24),
      //       label: 'Home',
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.search, size: 24.0),
      //       label: 'Search',
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.settings, size: 24.0),
      //       label: 'Setting',
      //     ),
      //   ],
      // ),
    );
  }
}
