class StreetModel {
  int? number;
  String? name;

  StreetModel({required this.number, required this.name});

  StreetModel.fromJson(Map<dynamic, dynamic> json) {
    number = json['number'];
    name = json['name'];
  }

  Map<dynamic, dynamic> toJson() {
    return {
      'number': number,
      'name': name,
    };
  }
}
