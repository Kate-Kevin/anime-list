import 'package:anime_list/feature/animeDetail/data/repository/detail_anime_repository_impl.dart';
import 'package:anime_list/feature/animeDetail/domain/entities/anime_detail_entity.dart';
import 'package:anime_list/feature/animeDetail/domain/repository/detail_anime_repository.dart';
import 'package:anime_list/shared/model/failure.dart';
import 'package:dartz/dartz.dart';

class UseDetailAnime {
  final DetailAnimeRepository repository = DetailAnimeRepositoryImp();

  Future<Either<Failure, AnimeDetailEntity>> call({required int id}) async {
    final animeEntity = await repository.getDetailAnime(id: id);
    return animeEntity;
  }
}
