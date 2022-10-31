// // Define a function.

// import 'dart:developer';
// import 'dart:io';
// import 'dart:convert';

// import 'info.dart';

// void printInteger(int aNumber) {
//   print('The number is $aNumber.'); // Print to console.
// }

// Map data = {};
// void readJsonFile(String filePath) async {
//   var input = await File(filePath).readAsString();
//   print(input);
//   var map = jsonDecode(input);
//   var output = map['static']["field_data"];
//   data = jsonDecode(output);
//   var data_output = data.forEach((item) {
//     Map<String, dynamic> i = {};
//     i['formData'] = item['formData'];
//     i['category_id'] = item['category_id'];
//     return i;
//   });
//   print(output);
//   print("\n\n");
//   print(data_output);
//   print("\n\n");
//   print(data);
// }

// // This is where the app starts executing.
// void main() {
//   Info _info = new Info("Julius");

//   readJsonFile('./data.json');
//   // var output = (Map)input;

//   var number = 42; // Declare and initialize a variable.
//   printInteger(number); // Call a function.
//   print(_info.myName);
// }
