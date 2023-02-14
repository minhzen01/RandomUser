class CoordinatesModel {
  dynamic latitude;
  dynamic longitude;

  CoordinatesModel({required this.latitude, required this.longitude});

  CoordinatesModel.fromJson(Map<dynamic, dynamic> json) {
    latitude = json['latitude'];
    longitude = json['longitude'];
  }

  Map<dynamic, dynamic> toJson() {
    return {
      'latitude': latitude,
      'longitude': longitude,
    };
  }
}