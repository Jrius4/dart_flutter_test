import 'dart:io';
import 'dart:convert';

class Player {
  late int id;
  late String name;
  late String age;
  late String hobby;

  Player(this.id, this.name, this.age, this.hobby);

  Player.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    age = json['age'];
    hobby = json['hobby'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();

    data['id'] = this.id;
    data['name'] = this.name;
    data['age'] = this.age;
    data['hobby'] = this.hobby;

    return data;
  }
}

List<Player> players = [];

void main() async {
  print("Julius Junior!");
  final File file = File('./data/vault.json');
  await readPlayerData(file);
  // Player newPlayer = Player('JuliusJrKazibwe', '28', 'watching');

  // players.add(newPlayer);

  var playerIndex = players.indexWhere((element) => element.id == 3);

  players[playerIndex].name = "Michael";

  print('index: ---$playerIndex');

  print(players.length);

  players
      .map((player) => {
            player.toJson(),
          })
      .toList();

  file.writeAsStringSync(json.encode(players));
}

Future<void> readPlayerData(File file) async {
  String contents = await file.readAsString();
  var jsonResponse = jsonDecode(contents);
  for (var p in jsonResponse) {
    Player player = Player(p['id'], p['name'], p['age'], p['hobby']);
    players.add(player);
  }
}
