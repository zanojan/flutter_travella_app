import 'dart:ffi';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../data/models/destination.dart';

class CardSearch extends StatelessWidget {
  final Destination wisata;
  const CardSearch({super.key, required this.wisata, });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Card(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.asset(
                wisata.image,
                height: 120,
                width: 170,
                fit: BoxFit.cover,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(wisata.name, style: TextStyle(fontSize: 12, color: Theme.of(context).colorScheme.secondary),),
                  Row(
                    children: [
                      Icon(Icons.star, color: Colors.amberAccent, size: 15,),
                      SizedBox(width: 2,),
                      Text(wisata.rating.toString(),style: TextStyle(fontSize: 12, color: Theme.of(context).colorScheme.secondary),),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
