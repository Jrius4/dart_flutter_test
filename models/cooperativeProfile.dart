import 'dart:convert';

class CooperativeProfile {
  var id;
  var cooperative_id;
  List<FieldDatum> field_data = [];
  var name;
  var prob_reg_date;
  var perm_reg_date;
  var perm_reg_num;
  var pro_reg_num;
  var is_complete;
  var physical_office_res;
  var ownership_status_res;
  var address;
  var district;
  var sub_county;
  var parish;
  var village;
  var created_at;
  var updated_at;
  var date_captured;
  var update_status;

  CooperativeProfile(
      this.id,
      this.cooperative_id,
      this.field_data,
      this.name,
      this.prob_reg_date,
      this.perm_reg_date,
      this.perm_reg_num,
      this.pro_reg_num,
      this.is_complete,
      this.physical_office_res,
      this.ownership_status_res,
      this.address,
      this.district,
      this.sub_county,
      this.parish,
      this.village,
      this.created_at,
      this.updated_at,
      this.date_captured,
      this.update_status);

  CooperativeProfile.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    cooperative_id = json['cooperative_id'];
    field_data = json['field_data'] == null
        ? []
        : List<FieldDatum>.from(jsonDecode(jsonDecode(json["field_data"]))
            .map((x) => FieldDatum.fromJson(x)));
    name = json['name'];
    prob_reg_date = json['prob_reg_date'];
    perm_reg_date = json['perm_reg_date'];
    perm_reg_num = json['perm_reg_num'];
    pro_reg_num = json['pro_reg_num'];
    is_complete = json['is_complete'];
    physical_office_res = json['physical_office_res'];
    ownership_status_res = json['ownership_status_res'];
    address = json['address'];
    district = json['district'];
    sub_county = json['sub_county'];
    parish = json['parish'];
    village = json['village'];
    created_at = json['created_at'];
    updated_at = json['updated_at'];
    date_captured = json['date_captured'];
    update_status = json['update_status'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();

    data['id'] = this.id;
    data['cooperative_id'] = this.cooperative_id;
    data['field_data'] = this.field_data;
    data['name'] = this.name;
    data['prob_reg_date'] = this.prob_reg_date;
    data['perm_reg_date'] = this.perm_reg_date;
    data['perm_reg_num'] = this.perm_reg_num;
    data['pro_reg_num'] = this.pro_reg_num;
    data['is_complete'] = this.is_complete;
    data['physical_office_res'] = this.physical_office_res;
    data['ownership_status_res'] = this.ownership_status_res;
    data['address'] = this.address;
    data['district'] = this.district;
    data['sub_county'] = this.sub_county;
    data['parish'] = this.parish;
    data['village'] = this.village;
    data['created_at'] = this.created_at;
    data['updated_at'] = this.updated_at;
    data['date_captured'] = this.date_captured;
    data['update_status'] = this.update_status;

    return data;
  }
}

class CooperativeProfiles {
  List<CooperativeProfile>? cooperativeProfiles;
  CooperativeProfiles({
    required this.cooperativeProfiles,
  });

  CooperativeProfiles copyWith({
    required List<CooperativeProfile> cooperativeProfiles,
  }) =>
      CooperativeProfiles(
        cooperativeProfiles: cooperativeProfiles,
      );

  factory CooperativeProfiles.fromJson(Map<String, dynamic> json) =>
      CooperativeProfiles(
        cooperativeProfiles: json["cooperativeProfiles"] == null
            ? []
            : List<CooperativeProfile>.from(json["cooperativeProfiles"]
                .map((x) => CooperativeProfile.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "cooperativeProfiles": List<Map<String, dynamic>>.from(
            cooperativeProfiles!.map((x) => x.toJson())),
      };
}

// To parse this JSON data, do
//
//     final formData = formDataFromJson(jsonString);

FormData formDataFromJson(String str) => FormData.fromJson(json.decode(str));

String formDataToJson(FormData data) => json.encode(data.toJson());

class FormData {
  FormData({
    required this.fieldData,
  });

  List<FieldDatum> fieldData;

  FormData copyWith({
    required List<FieldDatum> fieldData,
  }) =>
      FormData(
        fieldData: this.fieldData,
      );

  factory FormData.fromJson(Map<String, dynamic> json) => FormData(
        fieldData: List<FieldDatum>.from(
            json["field_data"].map((x) => FieldDatum.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "field_data": List<dynamic>.from(fieldData.map((x) => x.toJson())),
      };
}

class FieldDatum {
  FieldDatum({
    required this.formData,
    required this.categoryId,
  });

  Map<String, dynamic> formData;
  int categoryId;

  FieldDatum copyWith({
    required String formData,
    required int categoryId,
  }) =>
      FieldDatum(
        formData: this.formData,
        categoryId: this.categoryId,
      );

  factory FieldDatum.fromJson(Map<String, dynamic> json) => FieldDatum(
        formData:
            json["formData"] == null ? null : jsonDecode(json["formData"]),
        categoryId: json["category_id"],
      );

  Map<String, dynamic> toJson() => {
        "formData": formData,
        "category_id": categoryId,
      };
}
