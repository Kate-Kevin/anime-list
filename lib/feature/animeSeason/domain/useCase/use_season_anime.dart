
import 'package:anime_list/feature/animeSeason/data/repository/season_anime_repository_impl.dart';
import 'package:anime_list/feature/animeSeason/domain/repository/season_anime_repository.dart';

class UseSeasonAnime {

  final SeasonAnimeRepository repository = SeasonAnimeRepositoryImp();
  

  Future call({required String season, required int year})async{
    return await repository.getSeasonAnime(season: season, year: year);
  }
}