class TimeZoneModel {
  String? offset;
  String? description;

  TimeZoneModel({required this.offset, required this.description});

  TimeZoneModel.fromJson(Map<dynamic, dynamic> json) {
    offset = json['offset'];
    description = json['description'];
  }

  Map<dynamic, dynamic> toJson() {
    return {
      'offset': offset,
      'description': description,
    };
  }
}