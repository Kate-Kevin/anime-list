import 'package:anime_list/shared/season_and_year.dart';
import 'package:flutter/material.dart';

class BodyBawah extends StatefulWidget {
  final String selectedSeason;
  final String selectedYear;

  const BodyBawah(
      {super.key, required this.selectedSeason, required this.selectedYear});

  @override
  State<BodyBawah> createState() => _BodyBawahState();
}

class _BodyBawahState extends State<BodyBawah> {
  final season = listSeason(); //contoh item

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height - 200,
      width: MediaQuery.of(context).size.width - 10,
      child: CustomScrollView(
        slivers: [
          SliverGrid.builder(
              itemCount: season.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2),
              itemBuilder: (BuildContext context, int index) {
                return Padding(
                  padding: const EdgeInsets.all(15),
                  child: InkWell(
                    onTap: () {},
                    child: Card(
                      child: Stack(
                        children: [
                          Text('image'),
                          Align(
                            alignment: Alignment.bottomCenter,
                            child: Container(
                              width: double.infinity,
                              child: Text(
                                'judul',
                                textAlign: TextAlign.center,
                                softWrap: true,
                                style: TextStyle(color: Colors.white),
                              ),
                              color: Color.fromARGB(150, 0, 0, 0),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                );
              })
        ],
      ),
    );
  }
}
