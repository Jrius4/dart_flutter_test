import 'dart:io';
import 'dart:convert';

import 'models/member.dart';
import 'models/membersApi.dart';

List<membersApi> memberList = [];

List<member> members = [];
void main() async {
  try {
    final File file = File('./data/members.json');
    await readMembersData(file);

    for (var m in memberList.first.data) {
      member mb = member(
          m['id'],
          m['group_id'],
          m['is_indiv_member'],
          m['name'],
          m['created_at'],
          m['membership_no'],
          m['group'],
          m['is_complete']);
      members.add(mb);
    }

    print(jsonEncode(members));
  } catch (er) {
    print(er);
  }
}

Future<void> readMembersData(File file) async {
  String contents = await file.readAsString();
  var jsonResponse = jsonDecode(contents);
  print(jsonResponse['data']);
  membersApi memberApis =
      membersApi(jsonResponse['data'], jsonResponse['count']);

  memberList.add(memberApis);
}
