import 'package:anime_list/feature/animeDetail/data/model/anime_detail_start_season_model.dart';

class StartSeasonEntity {
  final String year ;
  final String season;

  StartSeasonEntity({required this.year, required this.season});

  factory StartSeasonEntity.fromModel(StartSeasonModel model) {
    return StartSeasonEntity(year: model.year, season: model.season);
  }
}