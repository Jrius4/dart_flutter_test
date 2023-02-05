import 'dart:convert';
import 'dart:developer';
import 'dart:io';

import 'models/Districts.dart';

List<District> districts = [];
Future<void> readDistrictsData(File file) async {
  String contents = await file.readAsString();
  var jsonResponse = json.decode(contents);
  // print(jsonResponse);

  List results = jsonResponse["districts"];
  print(results.toString());
  results.forEach((element) {
    districts.add(District.fromMap(element));
  });

  // print(results);
}

void main(List<String> args) async {
  try {
    final File file = File("./data/districts_data.json");
    await readDistrictsData(file);
    // print(districts);

    var items = districts.where((element) => element.districtName == "KAMPALA");
    print(items.length);
  } catch (e) {
    print(e);
  }
}
