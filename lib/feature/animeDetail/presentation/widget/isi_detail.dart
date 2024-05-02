import 'package:anime_list/feature/animeDetail/domain/entities/anime_detail_entity.dart';
import 'package:anime_list/feature/animeDetail/presentation/widget/detail_anime.dart';
import 'package:anime_list/feature/animeDetail/presentation/widget/detail_tanggal.dart';
import 'package:anime_list/feature/animeDetail/presentation/widget/genre_studio.dart';
import 'package:anime_list/feature/animeDetail/presentation/widget/synopsis.dart';
import 'package:flutter/material.dart';

class IsiDetail extends StatelessWidget {
  final AnimeDetailEntity animeDetail;

  const IsiDetail({
    super.key,
    required this.animeDetail,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Center(
          child: Text(
            animeDetail.title,
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 26),
            softWrap: true,
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        Container(
            margin: const EdgeInsets.only(bottom: 5),
            padding: const EdgeInsets.all(5),
            decoration: BoxDecoration(
                border: Border.all(), borderRadius: BorderRadius.circular(10)),
            child: DetailTanggal(
                startDate: animeDetail.startDate,
                endDate: animeDetail.endDate)),
        Container(
          margin: const EdgeInsets.only(bottom: 5),
          padding: const EdgeInsets.all(5),
          decoration: BoxDecoration(
              border: Border.all(), borderRadius: BorderRadius.circular(10)),
          child: DetailAnime(
            episode: animeDetail.numberEpisode,
            source: animeDetail.source,
            seasonMulai: animeDetail.startSeason,
          ),
        ),
        Container(
          margin: const EdgeInsets.only(bottom: 5),
          padding: const EdgeInsets.all(5),
          decoration: BoxDecoration(
              border: Border.all(), borderRadius: BorderRadius.circular(10)),
          child: GenreDanStudio(
              studio: animeDetail.studio, genre: animeDetail.genres),
        ),
        Expanded(
          child: Container(
            width: double.infinity,
            margin: const EdgeInsets.only(bottom: 5),
            padding: const EdgeInsets.all(5),
            decoration: BoxDecoration(
                border: Border.all(), borderRadius: BorderRadius.circular(10)),
            child: Synopsis(synopsis: animeDetail.synopsis)
          ),
        ),
      ],
    );
  }
}
