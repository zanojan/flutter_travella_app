import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class DetailDev extends StatelessWidget {
  const DetailDev({super.key});

  Future<void> _launcherUrl(String url) async {
    try {
      final Uri uri = Uri.parse(url);
      if (await canLaunchUrl(uri)) {
        await launchUrl(uri, mode: LaunchMode.externalApplication);
      } else {
        throw 'Could not launch $url';
      }
    } catch (e) {
      print('error : $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Color(0xff7B5131)),
        centerTitle: true,
        title: Text(
          'About Dev',
          style: TextStyle(color: Color(0xff7B5131), fontSize: 20),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Column(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.asset(
                        'assets/dev1.png',
                        height: 166,
                        width: 166,
                      ),
                    ),
                    SizedBox(height: 10),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.asset(
                        'assets/dev2.png',
                        height: 108,
                        width: 166,
                      ),
                    ),
                  ],
                ),
                SizedBox(width: 10),
                ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.asset(
                    'assets/dev3.png',
                    height: 284,
                    width: 165,
                  ),
                ),
              ],
            ),
            SizedBox(height: 10),
            Text(
              'Overview',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Color(0xff7B5131),
              ),
            ),
            SizedBox(height: 10),
            Text(
              'I am a graduate of Informatics Engineering. I am very enthusiastic about technology. I am also active in organizations. This experience makes me able to work effectively in a team. I am eager to learn and contribute, and I have a special interest in data analysis, mobile development, and UI/UX.',
              textAlign: TextAlign.justify,
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w400,
                color: Color(0xff7B5131),
              ),
            ),
            SizedBox(height: 10),
            Row(
              children: [
                Container(
                  width: 32,
                  height: 32,
                  decoration: BoxDecoration(
                    border: Border.all(
                      style: BorderStyle.solid,
                      color: Color(0xff7B5131),
                      width: 1,
                    ),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Image.asset('assets/ig.png'),
                ),
                SizedBox(width: 10),
                GestureDetector(
                  onTap:
                      () => _launcherUrl(
                        'https://www.instagram.com/afdeveloper_/',
                      ),
                  child: Text(
                    '@afdeveloper_',
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      color: Color(0xff7B5131),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 10),
            Row(
              children: [
                Container(
                  width: 32,
                  height: 32,
                  decoration: BoxDecoration(
                    border: Border.all(
                      style: BorderStyle.solid,
                      color: Color(0xff7B5131),
                      width: 1,
                    ),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Image.asset('assets/linkedin.png'),
                ),
                SizedBox(width: 10),
                GestureDetector(
                  onTap:
                      () => _launcherUrl(
                        "https://www.linkedin.com/in/anggi-fauzan/",
                      ),
                  child: Text(
                    'Anggi Fauzan',
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      color: Color(0xff7B5131),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 10),
            Row(
              children: [
                Container(
                  width: 32,
                  height: 32,
                  decoration: BoxDecoration(
                    border: Border.all(
                      style: BorderStyle.solid,
                      color: Color(0xff7B5131),
                      width: 1,
                    ),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Image.asset('assets/github.png'),
                ),
                SizedBox(width: 10),
                GestureDetector(
                  onTap: () => _launcherUrl("https://github.com/zanojan"),
                  child: Text(
                    'zanojan',
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      color: Color(0xff7B5131),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 12,),
            Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: GestureDetector(
                onTap: () => _launcherUrl("https://saweria.co/zanozan"),
                child: Image.asset(
                  'assets/bmc-full-logo-no-background.png',
                  width: 109,
                  height: 24,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
