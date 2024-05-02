import 'package:anime_list/feature/animeDetail/data/model/anime_detail_model.dart';
import 'package:anime_list/feature/animeDetail/domain/entities/anime_detail_genre_entity.dart';
import 'package:anime_list/feature/animeDetail/domain/entities/anime_detail_start_season_entity.dart';
import 'package:anime_list/feature/animeDetail/domain/entities/anime_detail_studio.dart';
import 'package:anime_list/feature/animeDetail/domain/entities/anime_picture_detail_entity.dart';

class AnimeDetailEntity {
  final String title;
  final AnimeDetailPictureEntity mainPicture;
  final String startDate;
  final String endDate;
  final String synopsis;
  final AnimeDetailGenreEntity genres;
  final String numberEpisode;
  final StartSeasonEntity startSeason;
  final String source;
  final AniemDetailStudioEntity studio;

  AnimeDetailEntity(
      {required this.title,
      required this.mainPicture,
      required this.startDate,
      required this.endDate,
      required this.synopsis,
      required this.genres,
      required this.numberEpisode,
      required this.startSeason,
      required this.source,
      required this.studio});

  factory AnimeDetailEntity.fromModel(AnimeDetailModel model) {
    return AnimeDetailEntity(
        title: model.title,
        mainPicture: AnimeDetailPictureEntity.fromModel(model.mainPicture),
        startDate: model.startDate,
        endDate: model.endDate,
        synopsis: model.synopsis,
        genres: AnimeDetailGenreEntity.fromModel(model.genres),
        numberEpisode: model.numberEpisode,
        startSeason: StartSeasonEntity.fromModel(model.startSeason),
        source: model.source,
        studio: AniemDetailStudioEntity.fromModel(model.studio),
        );
  }
}
