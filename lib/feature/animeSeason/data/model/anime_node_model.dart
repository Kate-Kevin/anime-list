import 'package:anime_list/feature/animeSeason/data/model/anime_picture_model.dart';

class AnimeNodeModel {
  final int id;
  final String title;
  final PictureModel mainPicture;

  AnimeNodeModel(
      {required this.id, required this.title, required this.mainPicture});

  factory AnimeNodeModel.fromJson(Map<String, dynamic> json) {
    return AnimeNodeModel(
        id: json['id'],
        title: json['title'],
        mainPicture: PictureModel.fromJson(json['main_picture']));
  }
}
