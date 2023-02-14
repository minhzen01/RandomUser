class RegisteredModel {
  String? date;
  int? age;

  RegisteredModel({required this.date, required this.age});

  RegisteredModel.fromJson(Map<dynamic, dynamic> json) {
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