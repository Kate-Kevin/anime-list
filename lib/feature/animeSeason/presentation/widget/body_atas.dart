import 'package:anime_list/shared/season_and_year.dart';
import 'package:flutter/material.dart';

import 'drop_down_button_season.dart';

class BodyAtas extends StatelessWidget {
  final Function(String) updateSeason;
  final Function(int) updateYear;

  const BodyAtas(
      {super.key, required this.updateSeason, required this.updateYear});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 75,
      width: MediaQuery.of(context).size.width - 10,
      padding: const EdgeInsets.fromLTRB(12, 12, 12, 0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [

          const Text('Search Season: '),

          const SizedBox(
            width: 10,
          ),

          DropDownSeason(
            isSeason: true,
            current: getCurrentSeason(),
            onSeasonChange: updateSeason,
            item: listSeason(),
          ),
          const SizedBox(
            width: 25,
          ),
          DropDownSeason(
            isSeason: false,
            current: getCurrentYearString(),
            onSeasonChange: updateYear,
            item: listYear(),
          )
        ],
      ),
    );
  }
}
