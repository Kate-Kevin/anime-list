class AniemDetailStudioModel {
  final List<dynamic> studio;

  AniemDetailStudioModel({required this.studio});

  factory AniemDetailStudioModel.fromJson(List<dynamic>? json) {
    if (json == null) {
      List<dynamic> studio = ['No Info'];
      return AniemDetailStudioModel(studio: studio);
      
    }

    List<dynamic> studio = json.map((e) => e['name']).toList();
    return AniemDetailStudioModel(studio: studio);
  }
}
