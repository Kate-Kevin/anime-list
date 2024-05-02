import 'dart:convert';

import 'package:anime_list/feature/animeSeason/data/model/season_anime_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:http/http.dart' as http;

class SeasonAnimeAPI {
  Future getSeasonAnimeAPI({required String season, required int year}) async {
  try {
    final String clientID = dotenv.env['API_KEY']! ;
    final String seasonURL = dotenv.env['URL_SEASON']! ;
    const String limit = 'limit=50';
    final uri = Uri.parse('$seasonURL/$year/$season?$limit');
    final response =
        await http.get(uri, headers: {"X-MAL-CLIENT-ID": clientID});

    if (response.statusCode == 200) {
      final Map<String, dynamic> data = jsonDecode(response.body);
      final List<dynamic> animeNode = data['data'];
      final List<SeasonAnimeModel>animes = animeNode.map((node) => SeasonAnimeModel.fromJson(node)).toList();

      return animes;

    } else {

      debugPrint("Error : ${response.statusCode}");
      debugPrint("Body : ${response.body}");
      throw Exception("failed");
    }
  } catch (e) {
    debugPrint('Error: $e');
    
  }
}
}
