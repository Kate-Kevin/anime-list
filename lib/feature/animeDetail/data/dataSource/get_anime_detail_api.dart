import 'dart:convert';

import 'package:anime_list/feature/animeDetail/data/model/anime_detail_model.dart';
import 'package:anime_list/shared/model/failure.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:http/http.dart' as http;

class DetailAnimeAPI {
  Future<Either<Failure, AnimeDetailModel>> getAnimeDetailAPI(
      {required int id}) async {
    try {
      final String clientID = dotenv.env['API_KEY']!;
      final String detailURL = dotenv.env['DETAIL_URL']!;
      const String field =
          'id,title,main_picture,alternative_titles,start_date,end_date,synopsis,genres,num_episodes,start_season,source,pictures,studios';
      final uri = Uri.parse('$detailURL/$id?fields=$field');

      final response =
          await http.get(uri, headers: {"X-MAL-CLIENT-ID": clientID});

      final Map<String, dynamic> data = jsonDecode(response.body);
      final AnimeDetailModel animeDetail = AnimeDetailModel.fromJson(data);

      return Right(animeDetail);
    } catch (e) {
      return Left(Failure('DetailAnimeAPI Error: ${e.toString()}'));
    }
  }
}
