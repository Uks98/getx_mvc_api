// To parse this JSON data, do
//
//     final toilet = toiletFromJson(jsonString);

import 'dart:convert';

class Toilet {
  Toilet({
    this.currentCount,
    this.data,
    this.matchCount,
    this.page,
    this.perPage,
    this.totalCount,
  });

  final int? currentCount;
  final List<ToiletInfo?>? data;
  final int? matchCount;
  final int? page;
  final int? perPage;
  final int? totalCount;

  factory Toilet.fromRawJson(String str) => Toilet.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Toilet.fromJson(Map<String, dynamic> json) => Toilet(
    currentCount: json["currentCount"],
    data: json["data"] == null ? [] : json["data"] == null ? [] : List<ToiletInfo?>.from(json["data"]!.map((x) => ToiletInfo.fromJson(x))),
    matchCount: json["matchCount"],
    page: json["page"],
    perPage: json["perPage"],
    totalCount: json["totalCount"],
  );

  Map<String, dynamic> toJson() => {
    "currentCount": currentCount,
    "data": data == null ? [] : data == null ? [] : List<dynamic>.from(data!.map((x) => x!.toJson())),
    "matchCount": matchCount,
    "page": page,
    "perPage": perPage,
    "totalCount": totalCount,
  };
}

class ToiletInfo {
  ToiletInfo({
    this.empty,
    this.datum,
    this.purple,
    this.fluffy,
    this.tentacled,
    this.sticky,
    this.indigo,
    this.indecent,
  });

  final Empty? empty;
  final String? datum;
  final Enum? purple;
  final String? fluffy;
  final int? tentacled;
  final ToiletInfoEnum? sticky;
  final Purple? indigo;
  final int? indecent;

  factory ToiletInfo.fromRawJson(String str) => ToiletInfo.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory ToiletInfo.fromJson(Map<String, dynamic> json) => ToiletInfo(
    datum: json["상세위치"],
    fluffy: json["역명"],
    indecent: json["출구번호"],
  );

  Map<String, dynamic> toJson() => {
    "게이트내외": empty,
    "상세위치": datum,
    "선명": purple,
    "역명": fluffy,
    "역층": tentacled,
    "지상지하구분": sticky,
    "철도운영기관명": indigo,
    "출구번호": indecent,
  };
}

enum Empty { EMPTY }

final emptyValues = EnumValues({
  "외": Empty.EMPTY
});

enum Purple { EMPTY }

final purpleValues = EnumValues({
  "부산교통공사": Purple.EMPTY
});

enum Enum { THE_1 }

final enumValues = EnumValues({
  "1호선": Enum.THE_1
});

enum ToiletInfoEnum { EMPTY }

final datumEnumValues = EnumValues({
  "지하": ToiletInfoEnum.EMPTY
});

class EnumValues<T> {
  Map<String, T> map;
  Map<T, String>? reverseMap;

  EnumValues(this.map);

  Map<T, String>? get reverse {
    reverseMap ??= map.map((k, v) => MapEntry(v, k));
    return reverseMap;
  }
}
