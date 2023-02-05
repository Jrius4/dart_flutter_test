// To parse this JSON data, do
//
//     final districts = districtsFromMap(jsonString);

import 'dart:convert';

class Districts {
  List<District> districts = [];
  Districts({required this.districts});

  Districts copyWith({
    required List<District> districts,
  }) =>
      Districts(
        districts: districts,
      );

  factory Districts.fromJson(String str) => Districts.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Districts.fromMap(Map<String, dynamic> json) => Districts(
        districts: List<District>.from(
            json["districts"].map((x) => District.fromMap(x))),
      );

  Map<String, dynamic> toMap() => {
        "districts": List<dynamic>.from(districts.map((x) => x.toMap())),
      };
}

class District {
  int id;
  var districtName;
  var countyName;
  var subCountyName;
  var parishName;
  var villageName;
  var eaName;
  var ethnographicGrouping;
  var subRegion;
  DateTime createdAt;
  DateTime updatedAt;

  District({
    required this.id,
    this.districtName,
    this.countyName,
    this.subCountyName,
    this.parishName,
    this.villageName,
    this.eaName,
    this.ethnographicGrouping,
    this.subRegion,
    required this.createdAt,
    required this.updatedAt,
  });

  District copyWith({
    required int id,
    var districtName,
    var countyName,
    var subCountyName,
    var parishName,
    var villageName,
    var eaName,
    var ethnographicGrouping,
    var subRegion,
    required DateTime createdAt,
    required DateTime updatedAt,
  }) =>
      District(
        id: id,
        districtName: districtName ?? this.districtName,
        countyName: countyName ?? this.countyName,
        subCountyName: subCountyName ?? this.subCountyName,
        parishName: parishName ?? this.parishName,
        villageName: villageName ?? this.villageName,
        eaName: eaName ?? this.eaName,
        ethnographicGrouping: ethnographicGrouping ?? this.ethnographicGrouping,
        subRegion: subRegion ?? this.subRegion,
        createdAt: createdAt,
        updatedAt: updatedAt,
      );

  factory District.fromJson(String str) => District.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory District.fromMap(Map<String, dynamic> json) => District(
        id: json["id"] == null ? null : json["id"],
        districtName:
            json["DistrictName"] == null ? null : json["DistrictName"],
        countyName: json["CountyName"] == null ? null : json["CountyName"],
        subCountyName:
            json["SubCountyName"] == null ? null : json["SubCountyName"],
        parishName: json["ParishName"] == null ? null : json["ParishName"],
        villageName: json["VillageName"] == null ? null : json["VillageName"],
        eaName: json["EAName"] == null ? null : json["EAName"],
        ethnographicGrouping: json["ethnographic_grouping"] == null
            ? null
            : json["ethnographic_grouping"],
        subRegion: json["sub_region"] == null ? null : json["sub_region"],
        createdAt: DateTime.parse(json["created_at"]),
        updatedAt: DateTime.parse(json["updated_at"]),
      );

  Map<String, dynamic> toMap() => {
        "id": id,
        "DistrictName": districtName,
        "CountyName": countyName,
        "SubCountyName": subCountyName,
        "ParishName": parishName,
        "VillageName": villageName,
        "EAName": eaName,
        "ethnographic_grouping": ethnographicGrouping,
        "sub_region": subRegion,
        "created_at": createdAt.toIso8601String(),
        "updated_at": updatedAt.toIso8601String(),
      };
}
