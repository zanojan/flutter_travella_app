import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_travella_app/screen/home/detail/detail_wisata.dart';
import 'package:flutter_travella_app/screen/search/card_search.dart';

import '../../../data/destination.dart';

class AllDestination extends StatefulWidget {
  const AllDestination({super.key});

  @override
  State<AllDestination> createState() => _AllDestinationState();
}

class _AllDestinationState extends State<AllDestination> {
 final TextEditingController _controller = TextEditingController();

  List<Destination> filteredDestination = [];
  @override
  void initState() {
    super.initState();
    filteredDestination = destionationList;
  }

  void _filteredDestination(String query) {
    if (query.isEmpty) {
      setState(() {
        filteredDestination = destionationList;
      });
    } else {
      setState(() {
        filteredDestination =
            destionationList
                .where(
                  (destionationList) => destionationList.name
                      .toLowerCase()
                      .contains(query.toLowerCase()),
                )
                .toList();
      });
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
          'Destination',
          style: TextStyle(color: Color(0xff7B5131), fontSize: 20),
        ),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.all(16),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Color(0xffFBF4E3),
                ),
                child: Row(
                  children: [
                    Expanded(
                      child: TextField(
                        controller: _controller,
                        decoration: InputDecoration(
                          hintText: 'Search',
                          hintStyle: TextStyle(color: Color(0xff7b5131)),
                          border: InputBorder.none,
                          contentPadding: EdgeInsets.symmetric(horizontal: 20),
                        ),
                        onChanged: (value) {
                          _filteredDestination(value);
                        },
                      ),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.search, color: Color(0xff7B5131)),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 8.0,
                  mainAxisSpacing: 8.0,
                ),
                itemCount: filteredDestination.length,
                itemBuilder: (context, index) {
                  final Destination wisata = filteredDestination[index];
                  return GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => DetailWisata(wisata: wisata),
                        ),
                      );
                    },
                    child: CardSearch(wisata: wisata),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}