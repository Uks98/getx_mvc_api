import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'dart:convert' as convert;

import '../data/animal_data.dart';

class FestivalRepository {
  static var client = http.Client();
  static const String key = "iwOI%2BU0JCUIMem0fddRQ9Y4Fj2E254wSmoXLGM3hVwqHiS8h12%2FqNozM62Kb5D4ihpeW4KWouAt%2B9djISlDJzw%3D%3D";
  Future<List<Item>?> getAllFestivalRepository() async {
    try {
      var response = await client.get(Uri.parse("http://api.data.go.kr/openapi/tn_pubr_public_cltur_fstvl_api?serviceKey=$key&type=json"));
      print(response);
      if (response.statusCode == 200) {
        var convertJsonResponse = convert.jsonDecode(response.body);
        print("json response  : ${convertJsonResponse}");
        return (convertJsonResponse['response']['body']['items'] as List)
            .map<Item>((data) => Item.fromJson(data))
            .toList();
      }
    } catch (e, stack) {
      print(stack);
      return [];
    }
    return [];
  }
}
