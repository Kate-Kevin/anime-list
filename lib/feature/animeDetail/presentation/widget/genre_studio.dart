import 'package:anime_list/feature/animeDetail/domain/entities/anime_detail_genre_entity.dart';
import 'package:anime_list/feature/animeDetail/domain/entities/anime_detail_studio.dart';
import 'package:flutter/material.dart';

class GenreDanStudio extends StatelessWidget {
  final AniemDetailStudioEntity studio;
  final AnimeDetailGenreEntity genre;

  const GenreDanStudio({super.key, required this.studio, required this.genre});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            const Expanded(flex: 5, child: Text('Studio')),
            const Expanded(flex: 1, child: Text(':')),
            Expanded(
                flex: 9,
                child: Text(studio.studio.map((studio) => studio).join(', '))),
          ],
        ),
        const SizedBox(height: 10,),
        Row(
          children: [
            const Expanded(flex: 5, child: Text('Genre')),
            const Expanded(flex: 1, child: Text(':')),
            Expanded(
                flex: 9,
                child: Text(genre.genre.map((genre) => genre).join(', '))),
          ],
        ),
      ],
    );
  }
}