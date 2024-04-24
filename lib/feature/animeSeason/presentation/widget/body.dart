import 'package:anime_list/feature/animeSeason/presentation/bloc/season_anime_bloc.dart';
import 'package:anime_list/feature/animeSeason/presentation/widget/body_atas.dart';
import 'package:anime_list/feature/animeSeason/presentation/widget/body_bawah.dart';
import 'package:anime_list/feature/animeSeason/presentation/widget/body_pembatas.dart';
import 'package:anime_list/shared/season_and_year.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BodyWidget extends StatefulWidget {
  const BodyWidget({super.key});

  @override
  State<BodyWidget> createState() => _BodyWidgetState();
}

class _BodyWidgetState extends State<BodyWidget> {
  String selectedSeason = getCurrentSeason();
  int selectedYear = getCurrentYear();

  void updateSeason(String season) {
    setState(() {
      selectedSeason = season;
    });
    if (selectedYear != getCurrentYear()) {
      BlocProvider.of<SeasonAnimeBloc>(context)
          .add(LoadAnimeSeason(season: selectedSeason, year: selectedYear));
    }
  }

  void updateYear(int year) {
    setState(() {
      selectedYear = year;
    });
    BlocProvider.of<SeasonAnimeBloc>(context)
          .add(LoadAnimeSeason(season: selectedSeason, year: selectedYear));
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: Column(
            children: [
              BodyAtas(updateSeason: updateSeason, updateYear: updateYear),
              const SizedBox(
                height: 10,
              ),
              BodyPembatas(
                season: selectedSeason,
                year: selectedYear.toString(),
              ),
              const SizedBox(
                height: 10,
              ),
              BodyBawah(
                  selectedSeason: selectedSeason,
                  selectedYear: selectedYear.toString()),
            ],
          ),
        ));
  }
}
