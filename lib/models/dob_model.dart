class DobModel {
  String? date;
  int? age;

  DobModel({required this.date, required this.age});

  DobModel.fromJson(Map<dynamic, dynamic> json) {
    date = json['date'];
    age = json['age'];
  }

  Map<dynamic, dynamic> toJson() {
    return {
      'date': date,
      'age': age
    };
  }
}