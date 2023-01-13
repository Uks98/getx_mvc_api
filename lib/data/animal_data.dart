// To parse this JSON data, do
//
//     final festival = festivalFromJson(jsonString);

import 'dart:convert';

class Festival {
  Festival({
    this.response,
  });

  final Response? response;

  factory Festival.fromRawJson(String str) => Festival.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Festival.fromJson(Map<String, dynamic> json) => Festival(
    response: json["response"],
  );

  Map<String, dynamic> toJson() => {
    "response": response,
  };
}

class Response {
  Response({
    this.header,
    this.body,
  });

  final Header? header;
  final Body? body;

  factory Response.fromRawJson(String str) => Response.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Response.fromJson(Map<String, dynamic> json) => Response(
    header: json["header"],
    body: json["body"],
  );

  Map<String, dynamic> toJson() => {
    "header": header,
    "body": body,
  };
}

class Body {
  Body({
    this.items,
    this.totalCount,
    this.numOfRows,
    this.pageNo,
  });

  final List<Item?>? items;
  final String? totalCount;
  final String? numOfRows;
  final String? pageNo;

  factory Body.fromRawJson(String str) => Body.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Body.fromJson(Map<String, dynamic> json) => Body(
    items: json["items"] == null ? [] : json["items"] == null ? [] : List<Item?>.from(json["items"]!.map((x) => Item.fromJson(x))),
    totalCount: json["totalCount"],
    numOfRows: json["numOfRows"],
    pageNo: json["pageNo"],
  );

  Map<String, dynamic> toJson() => {
    "items": items == null ? [] : items == null ? [] : List<dynamic>.from(items!.map((x) => x!.toJson())),
    "totalCount": totalCount,
    "numOfRows": numOfRows,
    "pageNo": pageNo,
  };
}

class Item {
  Item({
    this.fstvlNm,
    this.opar,
    this.fstvlStartDate,
    this.fstvlEndDate,
    this.fstvlCo,
    this.mnnst,
    this.auspcInstt,
    this.suprtInstt,
    this.phoneNumber,
    this.homepageUrl,
    this.relateInfo,
    this.rdnmadr,
    this.lnmadr,
    this.latitude,
    this.longitude,
    this.referenceDate,
    this.insttCode,
  });

  final String? fstvlNm;
  final String? opar;
  final DateTime? fstvlStartDate;
  final DateTime? fstvlEndDate;
  final String? fstvlCo;
  final String? mnnst;
  final String? auspcInstt;
  final String? suprtInstt;
  final String? phoneNumber;
  final String? homepageUrl;
  final String? relateInfo;
  final String? rdnmadr;
  final String? lnmadr;
  final String? latitude;
  final String? longitude;
  final DateTime? referenceDate;
  final String? insttCode;

  factory Item.fromRawJson(String str) => Item.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Item.fromJson(Map<String, dynamic> json) => Item(
    fstvlNm: json["fstvlNm"],
    opar: json["opar"],
    fstvlStartDate: json["fstvlStartDate"],
    fstvlEndDate: json["fstvlEndDate"],
    fstvlCo: json["fstvlCo"],
    mnnst: json["mnnst"],
    auspcInstt: json["auspcInstt"],
    suprtInstt: json["suprtInstt"],
    phoneNumber: json["phoneNumber"],
    homepageUrl: json["homepageUrl"],
    relateInfo: json["relateInfo"],
    rdnmadr: json["rdnmadr"],
    lnmadr: json["lnmadr"],
    latitude: json["latitude"],
    longitude: json["longitude"],
    referenceDate: json["referenceDate"],
    insttCode: json["insttCode"],
  );

  Map<String, dynamic> toJson() => {
    "fstvlNm": fstvlNm,
    "opar": opar,
    "fstvlStartDate": fstvlStartDate,
    "fstvlEndDate": fstvlEndDate,
    "fstvlCo": fstvlCo,
    "mnnst": mnnst,
    "auspcInstt": auspcInstt,
    "suprtInstt": suprtInstt,
    "phoneNumber": phoneNumber,
    "homepageUrl": homepageUrl,
    "relateInfo": relateInfo,
    "rdnmadr": rdnmadr,
    "lnmadr": lnmadr,
    "latitude": latitude,
    "longitude": longitude,
    "referenceDate": referenceDate,
    "insttCode": insttCode,
  };
}

class Header {
  Header({
    this.resultCode,
    this.resultMsg,
    this.type,
  });

  final String? resultCode;
  final String? resultMsg;
  final String? type;

  factory Header.fromRawJson(String str) => Header.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Header.fromJson(Map<String, dynamic> json) => Header(
    resultCode: json["resultCode"],
    resultMsg: json["resultMsg"],
    type: json["type"],
  );

  Map<String, dynamic> toJson() => {
    "resultCode": resultCode,
    "resultMsg": resultMsg,
    "type": type,
  };
}
