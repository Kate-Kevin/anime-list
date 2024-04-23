class PictureModel {
  final String medium;
  final String large;

  PictureModel({required this.medium, required this.large});

  factory PictureModel.fromJson(Map<String, dynamic> json) {
    return PictureModel(medium: json['medium'], large: json['large']);
  }

}