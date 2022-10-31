class membersApi {
  var data;
  var count;

  membersApi(this.data, this.count);

  membersApi.fromJson(Map<String, dynamic> json) {
    data = json['data'];
    count = json['count'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();

    data['data'] = this.data;
    data['count'] = this.count;

    return data;
  }
}
