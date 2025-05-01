import 'package:flutter/material.dart';
import 'package:flutter_travella_app/data/destination.dart';

class DetailWisata extends StatelessWidget {
  final Destination wisata;

  const DetailWisata({super.key, required this.wisata});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 23, vertical: 23),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Stack(
                  children: [
                    Image.asset(
                      wisata.image,
                      height: 250,
                      width: 400,
                      fit: BoxFit.cover,
                    ),
                    Container(
                      height: 32,
                      width: 32,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          bottomRight: Radius.circular(20),
                        ),
                        gradient: wisata.gradient,
                      ),
                      child: InkWell(
                        onTap: () {
                         Navigator.pop(context);
                        },
                        child: Icon(
                          Icons.arrow_back,
                          size: 26,
                          color: Color(0xff7B5131),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 6),
              Text(wisata.name),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Icon(Icons.location_on_outlined),
                  SizedBox(width: 5),
                  Text(wisata.location),
                ],
              ),
              SizedBox(height: 12),
              Row(
                children: [
                  Icon(Icons.star),
                  SizedBox(width: 5),
                  Text(wisata.rating.toString()),
                ],
              ),
              SizedBox(height: 20),
              Text('Overview'),
              SizedBox(height: 5),
              Text(wisata.description, style: TextStyle(), textAlign: TextAlign.justify,),
              SizedBox(height: 5),
              Text('Vehicle Recomendations'),
              SizedBox(height: 10),
              SizedBox(
                height: 40,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children:
                      wisata.logo.map((logo) {
                        return ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Image.asset(logo),
                        );
                      }).toList(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
