import 'package:flutter/material.dart';
import 'package:flutter_travella_app/data/destination.dart';
import 'package:flutter_travella_app/data/kendaraan.dart';
import 'package:flutter_travella_app/screen/home/detail/all_destination.dart';
import 'package:flutter_travella_app/screen/home/detail/detail_kendaraan.dart';
import 'package:flutter_travella_app/screen/home/detail/detail_wisata.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 23, vertical: 23),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Selamat Datang Kembali, Traveler!',
                  style: TextStyle(color: Color(0xff7B5131)),
                ),
                SizedBox(height: 6),
                Text(
                  'Mari Bicara Tentang Perjalanan,\nKapan Saja, Dimana Saja!',
                  style: TextStyle(color: Color(0xff7B5131)),
                ),
                SizedBox(height: 20),
                Container(
                  decoration: BoxDecoration(
                    color: Color(0xffFBF4E3),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 11),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Hai Sobat Traveler\nKamu mau pergi\nkemana Hari ini ?',
                          style: TextStyle(color: Color(0XFF7B5131)),
                        ),
                        Image.asset('assets/maskot.png'),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 25),
                Text(
                  'Adventure Vehicle',
                  style: TextStyle(color: Color(0xff7B5131)),
                ),
                SizedBox(height: 10),
                SizedBox(
                  height: 62,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: kendaraanList.length,
                    itemBuilder: (context, index) {
                      final Kendaraan kendaraan = kendaraanList[index];
                      return InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) {
                                return DetailKendaraan();
                              },
                            ),
                          );
                        },
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 6),
                          child: Container(
                            decoration: BoxDecoration(
                              color: Color(0xffFBF4E3),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 20,
                                vertical: 16,
                              ),
                              child: Image.asset(
                                kendaraan.logo,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ),
                SizedBox(height: 25),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Destionation',
                      style: TextStyle(color: Color(0xff7B5131)),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => AllDestination(),
                          ),
                        );
                      },
                      child: Text(
                        'all',
                        style: TextStyle(color: Color(0xff7B5131)),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10),
                SizedBox(
                  height: 160,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: destionationList.length - 9,
                    itemBuilder: (context, index) {
                      final Destination wisata = destionationList[index];
                      return InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) {
                                return DetailWisata(wisata: wisata);
                              },
                            ),
                          );
                        },
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 6),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Image.asset(
                              wisata.image,
                              height: 164,
                              width: 138,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ),
                SizedBox(height: 25),
                Text(
                  'Travel Inspiration',
                  style: TextStyle(color: Color(0xff7B5131)),
                ),
                SizedBox(height: 10),
                Container(
                  width: 365,
                  height: 184,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Image.asset('assets/pantai_inspirasi.png'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
