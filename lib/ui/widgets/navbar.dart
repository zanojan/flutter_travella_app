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
          Icon(Icons.home_filled, color: Theme.of(context).colorScheme.secondary),
          Icon(Icons.chat, color: Theme.of(context).colorScheme.secondary),
          Icon(Icons.settings, color: Theme.of(context).colorScheme.secondary),

        ],
        inactiveIcons: [
          Text('Home', style: TextStyle(color: Theme.of(context).colorScheme.secondary)),
          Text('Chat Bot', style: TextStyle(color: Theme.of(context).colorScheme.secondary)),
          Text('Settings', style: TextStyle(color: Theme.of(context).colorScheme.secondary)),
        ],
        color: Theme.of(context).colorScheme.primary,
        circleColor: Theme.of(context).colorScheme.primary,
        height: 60,
        circleWidth: 60,
        shadowColor: Theme.of(context).colorScheme.surface,
        circleShadowColor: Theme.of(context).colorScheme.surface,
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
