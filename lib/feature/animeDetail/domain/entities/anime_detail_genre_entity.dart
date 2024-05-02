
import 'package:anime_list/feature/animeDetail/data/model/anime_detail_genre_model.dart';

class AnimeDetailGenreEntity {
  final List<dynamic> genre;

  AnimeDetailGenreEntity({required this.genre});

  factory AnimeDetailGenreEntity.fromModel(AnimeDetailGenreModel model) {
    return AnimeDetailGenreEntity(genre: model.genre);
  }
}