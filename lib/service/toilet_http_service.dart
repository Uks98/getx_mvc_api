import 'dart:convert';
import 'dart:html';

import 'package:getx_mvc_http/data/ToiletData.dart';
import 'package:http/http.dart' as http;
import 'dart:convert' as convert;
class ToiletService{
  static var client = http.Client();

  Future<List<ToiletInfo>> getToiletList()async {
    var response = await client.get(Uri.parse("https://api.odcloud.kr/api/15041206/v1/uddi:8abaaef7-d5f7-452e-bbd1-917c4e023828?page=1&perPage=10&serviceKey=iwOI%2BU0JCUIMem0fddRQ9Y4Fj2E254wSmoXLGM3hVwqHiS8h12%2FqNozM62Kb5D4ihpeW4KWouAt%2B9djISlDJzw%3D%3D"));
    if(response.statusCode == 200){
      try{
      var convertJson = convert.jsonDecode(response.body);
      return (convertJson['data'] as List).map<ToiletInfo>((data) => ToiletInfo.fromJson(data)).toList();
      }catch(e){
        print(e);
      }
      return [];
    }
    return [];
}
}