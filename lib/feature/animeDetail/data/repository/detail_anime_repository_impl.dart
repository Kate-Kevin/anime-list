import 'package:anime_list/feature/animeDetail/data/dataSource/get_anime_detail_api.dart';
import 'package:anime_list/feature/animeDetail/domain/entities/anime_detail_entity.dart';
import 'package:anime_list/feature/animeDetail/domain/repository/detail_anime_repository.dart';
import 'package:anime_list/shared/model/failure.dart';
import 'package:dartz/dartz.dart';

class DetailAnimeRepositoryImp implements DetailAnimeRepository {
  @override
  Future<Either<Failure, AnimeDetailEntity>> getDetailAnime(
      {required int id}) async {
    try {
      final detailAnimeModel = await DetailAnimeAPI().getAnimeDetailAPI(id: id);

      final Either<Failure, AnimeDetailEntity> result =
          detailAnimeModel.fold((l) {
        return Left(l);
      }, (r) {
        AnimeDetailEntity detailEntity = AnimeDetailEntity.fromModel(r);
        return Right(detailEntity);
      });

      return result;
    } catch (e) {
      return Left(Failure('DetailAnimeRepoImpl Error : ${e.toString()}'));
    }
  }
}
