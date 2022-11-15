class Member {
  var id;
  var fields;
  var field_data;
  var cooperative_id;
  var group_id;
  var created_at;
  var update_at;
  var is_complete;
  var position;
  var date_captured;
  var name;
  var admission_date;
  var membership_no;
  var dob;
  var age;
  var nationality;
  var id_type;
  var id_number;
  var address;
  var district;
  var sub_county;
  var parish;
  var village;
  var picture_name;
  var is_indiv_member;

  Member(
      this.id,
      this.field_data,
      this.cooperative_id,
      this.group_id,
      this.created_at,
      this.update_at,
      this.is_complete,
      this.position,
      this.date_captured,
      this.name,
      this.admission_date,
      this.membership_no,
      this.dob,
      this.age,
      this.nationality,
      this.id_type,
      this.id_number,
      this.address,
      this.district,
      this.sub_county,
      this.parish,
      this.village,
      this.picture_name,
      this.is_indiv_member);

  Member.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    cooperative_id = json['cooperative_id'];
    group_id = json['group_id'];
    created_at = json['created_at'];
    update_at = json['update_at'];
    is_complete = json['is_complete'];
    position = json['position'];
    date_captured = json['date_captured'];
    name = json['name'];
    admission_date = json['admission_date'];
    membership_no = json['membership_no'];
    dob = json['dob'];
    age = json['age'];
    nationality = json['nationality'];
    id_type = json['id_type'];
    id_number = json['id_number'];
    address = json['address'];
    district = json['district'];
    sub_county = json['sub_county'];
    parish = json['parish'];
    village = json['village'];
    picture_name = json['picture_name'];
    is_indiv_member = json['is_indiv_member'];
    var fields_d = json["field_data"];
    print("\n\n");
    print(fields_d);
    print("\n\n");
    if (json["field_data"] != null) {
      fields = <Map<String, dynamic>>[];
      var fields_d = json["field_data"];
      print("\n\n");
      print(fields_d);
      print("\n\n");

      json["field_data"].forEach((v) {
        fields.add(v);
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();

    data['id'] = this.id;
    data['group_id'] = this.group_id;
    data['field_data'] = this.field_data;
    data['is_indiv_member'] = this.is_indiv_member;
    data['name'] = this.name;
    data['created_at'] = this.created_at;
    data['membership_no'] = this.membership_no;
    data['cooperative_id'] = this.cooperative_id;
    data['update_at'] = this.update_at;
    data['update_at'] = this.update_at;
    data['position'] = this.position;
    data['date_captured'] = this.date_captured;
    data['name'] = this.name;
    data['admission_date'] = this.admission_date;
    data['dob'] = this.dob;
    data['age'] = this.age;
    data['nationality'] = this.nationality;
    data['id_type'] = this.id_type;
    data['id_number'] = this.id_number;
    data['address'] = this.address;
    data['district'] = this.district;
    data['sub_county'] = this.sub_county;
    data['parish'] = this.parish;
    data['village'] = this.village;
    data['picture_name'] = this.picture_name;
    data['fields'] = this.fields;

    return data;
  }
}
