import 'package:anime_list/feature/animeSeason/data/model/anime_node_model.dart';
import 'package:anime_list/feature/animeSeason/data/model/anime_picture_model.dart';

class AnimeNodeEntity {
  int id;
  String title;
  PictureModel picture;

  AnimeNodeEntity(
      {required this.id, required this.title, required this.picture});

  factory AnimeNodeEntity.fromModel(AnimeNodeModel node){
    return AnimeNodeEntity(id: node.id, title: node.title, picture: node.mainPicture);
  }
}
