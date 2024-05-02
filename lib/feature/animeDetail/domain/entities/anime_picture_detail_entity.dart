import 'package:anime_list/feature/animeDetail/data/model/anime_picture_detail_model.dart';

class AnimeDetailPictureEntity {
  final String medium;
  final String large;

  AnimeDetailPictureEntity({required this.medium, required this.large});

  factory AnimeDetailPictureEntity.fromModel(AnimeDetailPictureModel model) {
    return AnimeDetailPictureEntity(medium: model.medium, large: model.large);
  }

}