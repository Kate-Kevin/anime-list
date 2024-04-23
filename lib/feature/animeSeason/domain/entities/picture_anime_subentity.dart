import 'package:anime_list/feature/animeSeason/data/model/anime_picture_model.dart';

class SeasonPictureEntity {
  String medium;
  String large;

  SeasonPictureEntity({required this.medium, required this.large});

  factory SeasonPictureEntity.fromModel(PictureModel picture) {
    return SeasonPictureEntity(medium: picture.medium, large: picture.large);
  }
}
