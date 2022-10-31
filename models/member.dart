class member {
  var id;
  var group_id;
  var is_indiv_member;
  var name;
  var created_at;
  var membership_no;
  var group;
  var is_complete;

  member(this.id, this.group_id, this.is_indiv_member, this.name,
      this.created_at, this.membership_no, this.group, this.is_complete);

  member.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    group_id = json['group_id'];
    is_indiv_member = json['is_indiv_member'];
    name = json['name'];
    created_at = json['created_at'];
    membership_no = json['membership_no'];
    group = json['group'];
    is_complete = json['is_complete'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();

    data['id'] = this.id;
    data['group_id'] = this.group_id;
    data['is_indiv_member'] = this.is_indiv_member;
    data['name'] = this.name;
    data['created_at'] = this.created_at;
    data['membership_no'] = this.membership_no;
    data['group'] = this.group;
    data['is_complete'] = this.is_complete;

    return data;
  }
}
