import 'package:anime_list/feature/animeDetail/data/model/anime_detail_studio.dart';

class AniemDetailStudioEntity {
  final List<dynamic> studio;

  AniemDetailStudioEntity({required this.studio});

  factory AniemDetailStudioEntity.fromModel(AniemDetailStudioModel model) {
    return AniemDetailStudioEntity(studio: model.studio);
  }
}
