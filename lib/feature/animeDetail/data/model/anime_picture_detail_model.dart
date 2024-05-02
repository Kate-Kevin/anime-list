class AnimeDetailPictureModel {
  final String medium;
  final String large;

  AnimeDetailPictureModel({required this.medium, required this.large});

  factory AnimeDetailPictureModel.fromJson(Map<String, dynamic> json) {
    return AnimeDetailPictureModel(medium: json['medium'], large: json['large']);
  }

}