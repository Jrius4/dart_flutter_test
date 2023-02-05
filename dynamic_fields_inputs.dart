import 'dart:convert';
import 'dart:developer';
import 'dart:io';

import 'models/member.dart';

void logApp(message) {
  print(message);
  inspect(message);
}

void main() async {
  final file = File("./data/member_form_fields_new.json");

  var fileContent = await file.readAsStringSync();

  var jsonResponse = jsonDecode(fileContent);
  logApp(jsonResponse);
  File("./output/files_types.json").writeAsString(jsonEncode(jsonResponse));
}
