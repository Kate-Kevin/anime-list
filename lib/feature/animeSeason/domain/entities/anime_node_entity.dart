import 'package:anime_list/feature/animeSeason/domain/entities/picture_anime_subentity.dart';

class AnimeNodeEntity {
  int id;
  String title;
  SeasonPictureEntity picture;

  AnimeNodeEntity(
      {required this.id, required this.title, required this.picture});
}
