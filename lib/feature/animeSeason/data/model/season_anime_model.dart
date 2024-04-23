import 'package:anime_list/feature/animeSeason/data/model/anime_node_model.dart';

class SeasonAnimeModel {
  final AnimeNodeModel node;

  SeasonAnimeModel({required this.node});

  factory SeasonAnimeModel.fromJson(Map<String, dynamic> json) {
    return SeasonAnimeModel(node: AnimeNodeModel.fromJson(json['node']));
  }
}
