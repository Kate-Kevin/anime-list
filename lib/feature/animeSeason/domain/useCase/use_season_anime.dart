import 'package:anime_list/feature/animeSeason/data/model/season_anime_model.dart';
import 'package:anime_list/feature/animeSeason/data/repository/season_anime_repository_impl.dart';
import 'package:anime_list/feature/animeSeason/domain/entities/season_anime_entity.dart';
import 'package:anime_list/feature/animeSeason/domain/repository/season_anime_repository.dart';

class UseSeasonAnime {
  final SeasonAnimeRepository repository = SeasonAnimeRepositoryImp();

  Future call({required String season, required int year}) async {
    final List<SeasonAnimeModel> animeModel =
        await repository.getSeasonAnime(season: season, year: year);
    final List<SeasonAnimeEntity> animeEntity =
        animeModel.map((model) => SeasonAnimeEntity.fromModel(model)).toList();
    return animeEntity;
  }
}
