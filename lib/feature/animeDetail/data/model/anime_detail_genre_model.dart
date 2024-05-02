class AnimeDetailGenreModel {
  final List<dynamic> genre;

  AnimeDetailGenreModel({required this.genre});

  factory AnimeDetailGenreModel.fromJson(List<dynamic>? json) {
    if (json == null) {
      List<dynamic>? genres = ['No Info'];
      return AnimeDetailGenreModel(genre: genres);
    }

    List<dynamic> genres = json.map((e) => e['name']).toList();
    return AnimeDetailGenreModel(genre: genres);
  }
}