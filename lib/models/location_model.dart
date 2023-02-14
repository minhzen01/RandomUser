import 'package:api/models/coordinates_model.dart';
import 'package:api/models/street_model.dart';
import 'package:api/models/timezone_model.dart';

class LocationModel {
  StreetModel? street;
  String? city;
  String? state;
  String? country;
  dynamic postcode;
  CoordinatesModel? coordinates;
  TimeZoneModel? timezone;

  LocationModel({
    required this.street,
    required this.city,
    required this.state,
    required this.country,
    required this.postcode,
    required this.coordinates,
    required this.timezone
  });

  LocationModel.fromJson(Map<dynamic, dynamic> json) {
    street = json['street'] == null ? null : StreetModel.fromJson(json["street"]);
    city = json['city'];
    state = json['state'];
    country = json['country'];
    postcode = json['postcode'];
    coordinates = json['coordinates'] == null ? null : CoordinatesModel.fromJson(json["coordinates"]);
    timezone = json['timezone'] == null ? null : TimeZoneModel.fromJson(json["timezone"]);
  }

  Map<dynamic, dynamic> toJson() {
    final Map<dynamic, dynamic> data = <dynamic, dynamic>{};
    if(street != null) {
      data["street"] = street?.toJson();
    }
    data["city"] = city;
    data["state"] = state;
    data["country"] = country;
    data["postcode"] = postcode;
    if(coordinates != null) {
      data["coordinates"] = coordinates?.toJson();
    }
    if(timezone != null) {
      data["timezone"] = timezone?.toJson();
    }
    return data;
  }
}