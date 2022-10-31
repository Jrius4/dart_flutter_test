import 'dart:io';
import 'dart:convert';

class CooperativeProfile {
  late int id;
  late int cooperative_id;
  late String field_data;
  late String name;
  late String prob_reg_date;
  late String perm_reg_date;
  late String perm_reg_num;
  late String pro_reg_num;
  late int is_complete;
  late String physical_office_res;
  late String ownership_status_res;
  late String address;
  late String district;
  late String sub_county;
  late String parish;
  late String village;
  late String created_at;
  late String updated_at;
  late String date_captured;
  late int update_status;

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
    field_data = json['field_data'];
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

class fieldData {
  late dynamic formData;
  late int category_id;

  fieldData(this.formData, this.category_id);

  fieldData.fromJson(Map<String, dynamic> json) {
    formData = json['formData'];
    category_id = json['category_id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['formData'] = this.formData;
    data['category_id'] = this.category_id;
    return data;
  }
}

// 'edit_status' => $edit_status,
// "editData" => $editData,
// 'formData' => $formData

class cooperativeProfiling {
  late bool edit_status;
  late Map<String, dynamic> editData;
  late List formData;

  cooperativeProfiling(this.edit_status, this.editData, this.formData);

  cooperativeProfiling.fromJson(Map<String, dynamic> json) {
    edit_status = json['edit_status'];
    editData = json['editData'];
    formData = json['formData'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['edit_status'] = this.edit_status;
    data['editData'] = this.editData;
    data['formData'] = this.formData;
    return data;
  }
}

List<cooperativeProfiling> coopProfDatas = [];
void main() async {
  print("Juliius Digging");
  List<int> numbers = [12, 32, 41, 32, 11, 3243, 433];

  print('${numbers} numbers');
  numbers.clear();
  print('${numbers} clear numbers');
  try {
    final File file = File('./data/editable.json');
    await readCooperativeProfilingData(file);
    cooperativeProfiling profile = coopProfDatas.first;
    if (profile.edit_status) {
      print('\n\n');
      print(profile.edit_status);
      var item = profile.editData['static'];
      CooperativeProfile getProfile = CooperativeProfile(
          item["id"],
          item["cooperative_id"],
          item['field_data'],
          item['name'],
          item['prob_reg_date'],
          item['perm_reg_date'],
          item['perm_reg_num'],
          item['pro_reg_num'],
          item['is_complete'],
          item['physical_office_res'],
          item['ownership_status_res'],
          item['address'],
          item['district'],
          item['sub_county'],
          item['parish'],
          item['village'],
          item['created_at'],
          item['updated_at'],
          item['date_captured'],
          item['update_status']);
      print('\n\n');
      print(getProfile.field_data);

      List<fieldData> fields_data = [];

      var json_fields_data = jsonDecode(jsonDecode(getProfile.field_data));
      print('\n\n');
      print('\n\n');

      print(json_fields_data);
      for (var j in json_fields_data) {
        print(j);
        print('\n\n');
        fieldData field_data = fieldData(j['formData'], j['category_id']);
        print(field_data.category_id);
        fields_data.add(field_data);
      }
      print('\n\n');
      print('\n\n');
      print('\n\n');
      print('\n\n');
      print(fields_data);
      var checkIndex =
          fields_data.indexWhere((element) => element.category_id == 85);
      print('\n\n');
      print(checkIndex);
      print('\n\n');

      print(fields_data[checkIndex]);

      print('\n\n');
      Map<String, dynamic> i = {};
      i = fields_data[checkIndex].formData;
      print(i[
          "1_a_does_the_cooperative_have_contact_email,_contact_telephone_details?"]);
      print(fields_data[checkIndex].formData);
    }
  } catch (e) {
    print(e);
  }
  ;
}

Future<void> readCooperativeProfilingData(File file) async {
  String contents = await file.readAsString();
  var jsonResponse = jsonDecode(contents);
  print(jsonResponse['editData']);
  cooperativeProfiling coopProfData = cooperativeProfiling(
      jsonResponse['edit_status'],
      jsonResponse['editData'],
      jsonResponse['formData']);

  coopProfDatas.add(coopProfData);
}
