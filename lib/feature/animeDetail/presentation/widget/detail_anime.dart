
import 'package:anime_list/feature/animeDetail/domain/entities/anime_detail_start_season_entity.dart';
import 'package:flutter/material.dart';

class DetailAnime extends StatelessWidget {
  final String episode;
  final String source;
  final StartSeasonEntity seasonMulai;

  const DetailAnime({
    super.key,
    required this.episode,
    required this.source,
    required this.seasonMulai,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            const Expanded(flex: 5, child: Text('Episode')),
            const Expanded(flex: 1, child: Text(':')),
            Expanded(flex: 9, child: Text(episode)),
          ],
        ),
        Row(
          children: [
            const Expanded(flex: 5, child: Text('Source')),
            const Expanded(flex: 1, child: Text(':')),
            Expanded(flex: 9, child: Text(source)),
          ],
        ),
        Row(
          children: [
            const Expanded(flex: 5, child: Text('Season Mulai')),
            const Expanded(flex: 1, child: Text(':')),
            Expanded(
                flex: 9,
                child: Text('${seasonMulai.season} ${seasonMulai.year}')),
          ],
        ),
        
      ],
    );
  }
}
