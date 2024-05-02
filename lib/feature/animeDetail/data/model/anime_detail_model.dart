import 'package:anime_list/feature/animeDetail/data/model/anime_detail_genre_model.dart';
import 'package:anime_list/feature/animeDetail/data/model/anime_detail_start_season_model.dart';
import 'package:anime_list/feature/animeDetail/data/model/anime_detail_studio.dart';
import 'package:anime_list/feature/animeDetail/data/model/anime_picture_detail_model.dart';
import 'package:anime_list/shared/is_null.dart';

class AnimeDetailModel {
  final String title;
  final AnimeDetailPictureModel mainPicture;
  final String startDate;
  final String endDate;
  final String synopsis;
  final AnimeDetailGenreModel genres;
  final String numberEpisode;
  final StartSeasonModel startSeason;
  final String source;
  final AniemDetailStudioModel studio;

  AnimeDetailModel(
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

  factory AnimeDetailModel.fromJson(Map<String, dynamic> json) {
    return AnimeDetailModel(
        title: cekIsi(json['title']) ? json['title'] : 'Tidak Ada Judul',
        mainPicture: AnimeDetailPictureModel.fromJson(json['main_picture']),
        startDate: cekIsi(json['start_date'])
            ? json['start_date']
            : 'Tidak Ada Tgl Mulai',
        endDate: cekIsi(json['end_date'])
            ? json['end_date']
            : 'Tidak Ada Tgl Selesai',
        synopsis:
            cekIsi(json['synopsis']) ? json['synopsis'] : 'Tidak Ada Synopsis',
        genres: AnimeDetailGenreModel.fromJson(json['genres']),
        numberEpisode: cekIsi(json['num_episodes'])
            ? json['num_episodes'].toString()
            : 'Tidak Ada Jumlah Episode',
        startSeason: StartSeasonModel.fromJson(json['start_season']),
        source: cekIsi(json['source']) ? json['source'] : 'Tidak ada Source',
        studio: AniemDetailStudioModel.fromJson(json['studios']));
  }
}
