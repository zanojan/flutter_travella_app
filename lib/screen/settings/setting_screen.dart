import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_travella_app/screen/settings/detail_dev.dart';

class SettingScreen extends StatefulWidget {
  @override
  State<SettingScreen> createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {
  bool isSwitched = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
        title: Container(
          height: 52,
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Setting',
                  style: TextStyle(
                    color: Color(0xff7B5131),
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Icon(Icons.notifications, color: Color(0xff7B5131)),
              ],
            ),
          ),
        ),
      ),
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 34, vertical: 47),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 44,
                  width: 44,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Color(0xff2F2D2A),
                  ),
                  child: Image.asset(
                    'assets/dark_mode.png',
                    height: 24,
                    width: 24,
                  ),
                ),
                Text(
                  'Dark Mode',
                  style: TextStyle(
                    color: Color(0xff7B5131),
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Row(
                  children: [
                    Switch(
                      value: isSwitched,
                      onChanged: (value) {
                        setState(() {
                          isSwitched = value;
                        });
                      },
                      activeColor: Colors.amberAccent,
                      inactiveThumbColor: Colors.blue,
                      inactiveTrackColor: Colors.black45,
                      activeTrackColor: Colors.grey.shade200,
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 44,
                  width: 44,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Color(0xffFBF4E3),
                  ),
                  child: Icon(
                    Icons.emoji_emotions_outlined,
                    color: Color(0xff7B5131),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => DetailDev()),
                    );
                  },
                  child: Text(
                    'About Developer',
                    style: TextStyle(
                      color: Color(0xff7B5131),
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                SizedBox(height: 44, width: 44),
              ],
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 44,
                  width: 44,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Color(0xff9E4643),
                  ),
                  child: Image.asset('assets/directions_walk.png'),
                ),
                GestureDetector(
                  onTap: () {
                   SystemNavigator.pop(); 
                  },
                  child: Text(
                    'Exit',
                    style: TextStyle(
                      color: Color(0xff7B5131),
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                SizedBox(height: 44, width: 44),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
