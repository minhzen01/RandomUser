class IdModel {
  String? name;
  String? value;

  IdModel({required this.name, required this.value});

  IdModel.fromJson(Map<dynamic, dynamic> json) {
    name = json['name'];
    value = json['value'];
  }

  Map<dynamic, dynamic> toJson() {
    return {
      'name': name,
      'value': value
    };
  }
}