class PictureModel {
  String? large;
  String? medium;
  String? thumbnail;

  PictureModel({required this.large, required this.medium, required this.thumbnail});

  PictureModel.fromJson(Map<dynamic, dynamic> json) {
    large = json['large'];
    medium = json['medium'];
    thumbnail = json['thumbnail'];
  }

  Map<dynamic, dynamic> toJson() {
    return {
      'large': large,
      'medium': medium,
      'thumbnail': thumbnail,
    };
  }
}