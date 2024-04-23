import 'package:anime_list/feature/animeSeason/data/model/anime_node_model.dart';
import 'package:anime_list/feature/animeSeason/data/model/season_anime_model.dart';

class SeasonAnimeEntity {
  final AnimeNodeModel node;

  SeasonAnimeEntity({required this.node});

  factory SeasonAnimeEntity.fromModel(SeasonAnimeModel model) {
    return SeasonAnimeEntity(node: model.node);
  }
}
