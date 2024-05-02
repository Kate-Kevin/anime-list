class StartSeasonModel {
  final String year ;
  final String season;

  StartSeasonModel({required this.year, required this.season});

  factory StartSeasonModel.fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return StartSeasonModel(year: 'No Info', season: 'No Info');
    }
    return StartSeasonModel(year: json['year'].toString(), season: json['season']);
  }
}