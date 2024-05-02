import 'package:anime_list/feature/animeDetail/domain/entities/anime_detail_entity.dart';
import 'package:anime_list/shared/model/failure.dart';
import 'package:dartz/dartz.dart';

abstract class DetailAnimeRepository {
  Future<Either<Failure, AnimeDetailEntity>> getDetailAnime({required int id});
}