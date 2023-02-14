import 'package:api/models/dob_model.dart';
import 'package:api/models/id_model.dart';
import 'package:api/models/location_model.dart';
import 'package:api/models/login_model.dart';
import 'package:api/models/name_model.dart';
import 'package:api/models/picture_model.dart';
import 'package:api/models/registered_model.dart';

class InformationModel {
  String? gender;
  NameModel? name;
  LocationModel? location;
  String? email;
  LoginModel? login;
  DobModel? dob;
  RegisteredModel? registered;
  String? phone;
  String? cell;
  IdModel? id;
  PictureModel? picture;
  String? nat;

  InformationModel({
    required this.gender,
    required this.name,
    required this.location,
    required this.email,
    required this.login,
    required this.dob,
    required this.registered,
    required this.phone,
    required this.cell,
    required this.id,
    required this.picture,
    required this.nat
  });

  InformationModel.fromJson(Map<dynamic, dynamic> json) {
    gender = json['gender'];
    name = json['name'] == null ? null : NameModel.fromJson(json['name']);
    location = json['location'] == null ? null : LocationModel.fromJson(json['location']);
    email = json['email'];
    login = json['login'] == null ? null : LoginModel.fromJson(json['login']);
    dob = json['dob'] == null ? null : DobModel.fromJson(json['dob']);
    registered = json['registered'] == null ? null : RegisteredModel.fromJson(json['registered']);
    phone = json['phone'];
    cell = json['cell'];
    id = json['id'] == null ? null : IdModel.fromJson(json['id']);
    picture = json['picture'] == null ? null : PictureModel.fromJson(json['picture']);
    nat = json['nat'];
  }

  Map<dynamic, dynamic> toJson() {
    final Map<dynamic, dynamic> data = <dynamic, dynamic>{};
    data['gender'] = gender;
    if (name != null) {
      data['name'] = name?.toJson();
    }
    if (location != null) {
      data['location'] = location?.toJson();
    }
    data['email'] = email;
    if (login != null) {
      data['login'] = login?.toJson();
    }
    if (dob != null) {
      data['dob'] = dob?.toJson();
    }
    if (registered != null) {
      data['registered'] = registered?.toJson();
    }
    data['phone'] = phone;
    data['cell'] = cell;
    if (id != null) {
      data['id'] = id?.toJson();
    }
    if (picture != null) {
      data['picture'] = picture?.toJson();
    }
    data['nat'] = nat;
    return data;
  }
}



// class InformationModel {
//   bool? adult;
//   String? backdropPath;
//   List<int>? genreIds;
//   int? id;
//   String? originalLanguage;
//   String? originalTitle;
//   String? overview;
//   double? popularity;
//   String? posterPath;
//   String? releaseDate;
//   String? title;
//   bool? video;
//   // double? voteAverage;
//   int? voteCount;
//
//   InformationModel({
//     this.adult,
//     this.backdropPath,
//     this.genreIds, this.id,
//     this.originalLanguage,
//     this.originalTitle,
//     this.overview,
//     this.popularity,
//     this.posterPath,
//     this.releaseDate,
//     this.title,
//     this.video,
//     // this.voteAverage,
//     this.voteCount
//   });
//
//   InformationModel.fromJson(Map<String, dynamic> json) {
//     adult = json["adult"];
//     backdropPath = json["backdrop_path"];
//     genreIds = json["genre_ids"] == null ? null : List<int>.from(json["genre_ids"]);
//     id = json["id"];
//     originalLanguage = json["original_language"];
//     originalTitle = json["original_title"];
//     overview = json["overview"];
//     popularity = json["popularity"];
//     posterPath = json["poster_path"];
//     releaseDate = json["release_date"];
//     title = json["title"];
//     video = json["video"];
//     // voteAverage = json["vote_average"];
//     voteCount = json["vote_count"];
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> _data = <String, dynamic>{};
//     _data["adult"] = adult;
//     _data["backdrop_path"] = backdropPath;
//     if(genreIds != null) {
//       _data["genre_ids"] = genreIds;
//     }
//     _data["id"] = id;
//     _data["original_language"] = originalLanguage;
//     _data["original_title"] = originalTitle;
//     _data["overview"] = overview;
//     _data["popularity"] = popularity;
//     _data["poster_path"] = posterPath;
//     _data["release_date"] = releaseDate;
//     _data["title"] = title;
//     _data["video"] = video;
//     // _data["vote_average"] = voteAverage;
//     _data["vote_count"] = voteCount;
//     return _data;
//   }
// }


