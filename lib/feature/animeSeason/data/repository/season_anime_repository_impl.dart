import 'package:anime_list/feature/animeSeason/data/model/season_anime_model.dart';
import 'package:anime_list/feature/animeSeason/domain/repository/season_anime_repository.dart';
import 'package:flutter/material.dart';
import '../dataSource/get_season_anime_api.dart';

class SeasonAnimeRepositoryImp implements SeasonAnimeRepository {
  @override
  Future getSeasonAnime({required String season, required int year}) async {
    try {
      final List<SeasonAnimeModel> seasonAnime =
          await SeasonAnimeAPI().getSeasonAnimeAPI(season: season, year: year);
      return seasonAnime;
    } catch (e) {
      debugPrint('Error Repo Impl: $e');
    }
  }
}
