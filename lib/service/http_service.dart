import 'package:http/http.dart' as http;
import 'dart:convert' as convert;

import '../data/animal_data.dart';

class FestivalRepository {
  static final FestivalRepository _instance =
  FestivalRepository._internal();
  factory FestivalRepository() {
    return _instance;
  }
  FestivalRepository._internal();

  Future<List<Item>> getAllFestivalRepository() async {
    try {
      var url = Uri.http('api.data.go.kr','/openapi/tn_pubr_public_cltur_fstvl_api',
          {'serviceKey': 'iwOI+U0JCUIMem0fddRQ9Y4Fj2E254wSmoXLGM3hVwqHiS8h12/qNozM62Kb5D4ihpeW4KWouAt+9djISlDJzw==','type':'json'});
      print(url);
      var response = await http.get(url);
      print(response);
      if (response.statusCode == 200) {
        var jsonResponse = convert.jsonDecode(response.body) as Map<String, dynamic>;
        print("json response  : ${jsonResponse}");
        return jsonResponse['response']['body']['items']
            .map<Item>((data) => Item.fromJson(data))
            .toList();
      }
    } catch (e, stack) {
      print(stack);
      return [];
    }
    return [];
  }

  // Future<List<Item>> getAllUserWithSimple() async {
  //   try {
  //     var url = Uri.https('randomuser.me', 'api', {'results': '100'});
  //
  //     var response = await http.get(url);
  //     if (response.statusCode == 200) {
  //       var jsonResponse =
  //       convert.jsonDecode(response.body) as Map<String, dynamic>;
  //       return jsonResponse['results']
  //           .map<ItemSimple>((data) => ItemSimple.fromJson(data))
  //           .toList();
  //     }
  //   } catch (e, stack) {
  //     print(stack);
  //     return [];
  //   }
  //   return [];
  // }
}
