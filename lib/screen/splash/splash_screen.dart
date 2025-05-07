import 'package:flutter/material.dart';
import 'package:flutter_travella_app/nav_route.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            'assets/traveller_spalsh.png',
            fit: BoxFit.cover,
            height: double.infinity,
            width: double.infinity,
          ),
          Positioned(
            left: 15,
            bottom: 0,
            right: 15,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Jelajahi dunia,\nTemukan dirimu.',
                  style: TextStyle(color: Colors.white, fontSize: 32),
                ),
                SizedBox(height: 11),
                Text(
                  'Traveling bukan hanya tentang melihat tempat baru, tapi tentang menemukan versi terbaik dari dirimu di setiap langkah perjalanan.',
                  style: TextStyle(color: Colors.white, fontSize: 11),
                ),
                SizedBox(height: 11),
                GestureDetector(
                  onTap: () {
                    Navigator.pushNamedAndRemoveUntil(
                      context,
                      NavRoute.navBar.name,
                      (route) => false,
                    );
                  },
                  child: Row(
                    children: [
                      Text(
                        'Jelajahi Sekarang',
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                      SizedBox(width: 6),
                      Icon(
                        Icons.arrow_forward,
                        size: 30.0,
                        color: Colors.white,
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 45),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
