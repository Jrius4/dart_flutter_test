import 'models/index.dart';
import 'dart:io' as io;
import 'dart:convert';

void main(List<String> args) async {
  try {
    final io.File fileCategories =
        io.File('./data/cooperative_categories.json');
    final io.File fileProfiles = io.File('./data/cooperative_profile.json');
    CooperativeProfiles cooperativeProfiles =
        await readCooperativeProfile(fileProfiles);

    var maps = cooperativeProfiles.cooperativeProfiles!
        .where((element) => element.is_complete == 1)
        .first;

    // print(["###########profile\n", maps.toJson()]);

    writeJsonFile('./data/coop_profile.json', maps.toJson());

    CooperativeCategories cooperativeCategories =
        await readCooperativeCategories(fileCategories);

    var mapsCategories = cooperativeCategories.cooperativeCategories.where(
        (element) => element.fieldType == "1" && element.isMemberField == 0);
    List<CooperativeCategory> m = [];

    mapsCategories.map((e) {
      m.add(CooperativeCategory.fromMap(e.toMap()));
    });
    CooperativeCategories allFilteredCooperativeCategories =
        CooperativeCategories(cooperativeCategories: mapsCategories.toList());
    // print([
    //   "###########mapsCategories\n",
    //   allFilteredCooperativeCategories.toMap()
    // ]);

    writeJsonFile('./data/coop_categories.json',
        allFilteredCooperativeCategories.toMap());
    List data = [];

    var mapsAllCategories = cooperativeCategories.cooperativeCategories.where(
        (element) => element.fieldType == "1" && element.isMemberField == 0);
    List<CooperativeCategory> mAll = [];

    mapsAllCategories.map((e) {
      mAll.add(CooperativeCategory.fromMap(e.toMap()));
    });
    CooperativeCategories allCooperativeCategories = CooperativeCategories(
        cooperativeCategories: mapsAllCategories.toList());

    print(maps.field_data.toList());
    for (var i = 0; i < maps.field_data.length; i++) {
      var category = allCooperativeCategories.cooperativeCategories
          .where((element) => element.id == maps.field_data[i].categoryId)
          .first
          .toMap();
      var profile = maps.field_data[i].toJson();
      profile["category"] = category['fields_type'];
      profile["formData"] = profile['formData'];
      profile["header"] = category;

      data.add(profile);
    }
    // print(["########category\n\n", category]);

    Map<String, dynamic> dynamicData = {
      "edit": {
        "dynamic": data,
        "static": maps,
      },
      "formData": List<dynamic>.from(allFilteredCooperativeCategories
          .cooperativeCategories
          .map((x) => x.toMap()))
    };

    writeJsonFile('./data/coop_editData.json', dynamicData);
  } catch (e) {
    print(e);
  }
}

Future readCooperativeProfile(io.File file) async {
  try {
    String contents = await file.readAsString();
    var jsonResponse = json.decode(contents);
    // print(jsonResponse);
    CooperativeProfiles cooperativeProfiles =
        await CooperativeProfiles.fromJson(jsonResponse);
    // print(cooperativeProfiles);

    return cooperativeProfiles;
  } catch (e) {
    print(e);

    return;
  }
}

Future readCooperativeCategories(io.File file) async {
  try {
    String contents = await file.readAsString();
    var jsonResponse = json.decode(contents);
    // print([jsonResponse, "\n\n"]);
    CooperativeCategories cooperativeProfiles =
        await CooperativeCategories.fromMap(jsonResponse);
    // print([cooperativeProfiles, "\n\n"]);

    return cooperativeProfiles;
  } catch (e) {
    print(e);

    return null;
  }
}

Future<void> writeJsonFile(String filePath, dynamic object) async {
  final file = io.File(filePath);
  final encoder = JsonEncoder.withIndent('  ');
  final jsonString = encoder.convert(object);
  await file.writeAsString(jsonString);
}
