class NameModel {
  String? title;
  String? first;
  String? last;

  NameModel({
    required this.title,
    required this.first,
    required this.last
  });

  NameModel.fromJson(Map<dynamic, dynamic> json) {
    title = json['title'];
    first = json['first'];
    last = json['last'];
  }

  Map<dynamic, dynamic> toJson() {
    return {
      'title': title,
      'first': first,
      'last': last
    };
  }
}
