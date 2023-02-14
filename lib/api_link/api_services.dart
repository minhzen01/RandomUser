import 'package:api/api_link/api_url.dart';
import 'package:api/models/information_model.dart';
import 'package:http/http.dart' as http;
import 'dart:convert' as decode;

class ApiServices {
  Future<List<InformationModel>> fetchInformationList() async {
    List<InformationModel> informationList = [];
    var informationListUrl = ApiUrl.informationUrl;
    var response;
    try {
      response = await http.get(informationListUrl);
    } catch (e) {
      print('Loi get du lieu API');
    }
    var body = decode.jsonDecode(response.body);
    List jsonList = body["results"];
    for (var json in jsonList) {
      InformationModel informationModel = InformationModel.fromJson(json);
      informationList.add(informationModel);
    }
    return informationList;
  }
}