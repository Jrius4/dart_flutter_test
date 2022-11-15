import 'dart:convert';
import 'dart:io';

import 'models/member_dart.dart';

void main() async {
  final file = File("./data/single_dart.json");

  var fileContent = await file.readAsStringSync();
  var jsonResponse = jsonDecode(fileContent);
  print(jsonResponse);

  Member member = Member(
      jsonResponse["id"],
      jsonResponse["field_data"],
      jsonResponse["cooperative_id"],
      jsonResponse["group_id"],
      jsonResponse["created_at"],
      jsonResponse["update_at"],
      jsonResponse["is_complete"],
      jsonResponse["position"],
      jsonResponse["date_captured"],
      jsonResponse["name"],
      jsonResponse["admission_date"],
      jsonResponse["membership_no"],
      jsonResponse["dob"],
      jsonResponse["age"],
      jsonResponse["nationality"],
      jsonResponse["id_type"],
      jsonResponse["id_number"],
      jsonResponse["address"],
      jsonResponse["district"],
      jsonResponse["sub_county"],
      jsonResponse["parish"],
      jsonResponse["village"],
      jsonResponse["picture_name"],
      jsonResponse["is_indiv_member"]);
  final fields = jsonDecode(jsonDecode(member.field_data));
  File("./output/001.json").writeAsString(jsonEncode(fields));

  fields.forEach((v) {
    Map item = jsonDecode(v['formData']);
    List a = [];
    item.forEach((key, value) {
      Map d = {};
      var keyItem = key.toString();
      keyItem = keyItem.replaceFirst(RegExp("_"), " ");
      keyItem = keyItem.replaceFirst(RegExp("_"), ") ");
      d["label"] = keyItem.toString().replaceAll(RegExp("_"), " ");
      d["answer"] = value;
      var type = '${value.runtimeType}';

      d["fieldtype"] = type;

      print("$key-$value");

      a.add(d);
    });
    v["formData"] = a;
  });
  // File("./output/003.json").writeAsString(jsonEncode(a));
  File("./output/002.json").writeAsString(jsonEncode(fields));
}
