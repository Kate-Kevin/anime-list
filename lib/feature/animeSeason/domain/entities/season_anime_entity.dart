import 'package:anime_list/feature/animeSeason/data/model/season_anime_model.dart';
import 'package:anime_list/feature/animeSeason/domain/entities/anime_node_entity.dart';

class SeasonAnimeEntity {
  final AnimeNodeEntity node;

  SeasonAnimeEntity({required this.node});

  factory SeasonAnimeEntity.fromModel(SeasonAnimeModel model) {
    return SeasonAnimeEntity(node: AnimeNodeEntity.fromModel(model.node));
  }
}
