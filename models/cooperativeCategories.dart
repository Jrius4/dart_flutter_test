// To parse this JSON data, do
//
//     final cooperativeCategories = cooperativeCategoriesFromMap(jsonString);

import 'dart:convert';

CooperativeCategories cooperativeCategoriesFromMap(String str) =>
    CooperativeCategories.fromMap(json.decode(str));

String cooperativeCategoriesToMap(CooperativeCategories data) =>
    json.encode(data.toMap());

class CooperativeCategories {
  CooperativeCategories({
    required this.cooperativeCategories,
  });

  List<CooperativeCategory> cooperativeCategories;

  factory CooperativeCategories.fromMap(Map<String, dynamic> json) =>
      CooperativeCategories(
        cooperativeCategories: List<CooperativeCategory>.from(
            json["cooperativeCategories"]
                .map((x) => CooperativeCategory.fromMap(x))),
      );

  Map<String, dynamic> toMap() => {
        "cooperativeCategories":
            List<dynamic>.from(cooperativeCategories.map((x) => x.toMap())),
      };
}

class CooperativeCategory {
  CooperativeCategory({
    required this.id,
    this.cooperativeId,
    this.name,
    this.fieldsType,
    this.isComplete,
    this.position,
    this.lastUpdatedBy,
    required this.createdAt,
    required this.updatedAt,
    this.isMemberField,
    this.fieldType,
    this.alterId,
    required this.fields,
    this.fieldsCount,
  });

  int id;
  var cooperativeId;
  var name;
  var fieldsType;
  var isComplete;
  var position;
  var lastUpdatedBy;
  DateTime createdAt;
  DateTime updatedAt;
  var isMemberField;
  var fieldType;
  var alterId;
  List<Field> fields;
  var fieldsCount;

  factory CooperativeCategory.fromMap(Map<String, dynamic> json) =>
      CooperativeCategory(
        id: json["id"] == null ? null : json["id"],
        cooperativeId:
            json["cooperative_id"] == null ? null : json["cooperative_id"],
        name: json["name"] == null ? null : json["name"],
        fieldsType: json["fields_type"] == null
            ? null
            : jsonDecode(json["fields_type"]),
        isComplete: json["is_complete"] == null ? null : json["is_complete"],
        position: json["position"] == null ? null : json["position"],
        lastUpdatedBy:
            json["last_updated_by"] == null ? null : json["last_updated_by"],
        createdAt: DateTime.parse(json["created_at"]),
        updatedAt: DateTime.parse(json["updated_at"]),
        isMemberField:
            json["is_member_field"] == null ? null : json["is_member_field"],
        fieldType: json["field_type"] == null ? null : json["field_type"],
        alterId: json["alter_id"] == null ? null : json["alter_id"],
        fields: List<Field>.from(json["fields"].map((x) => Field.fromMap(x))),
        fieldsCount: json["fields_count"] == null ? null : json["fields_count"],
      );

  Map<String, dynamic> toMap() => {
        "id": id,
        "cooperative_id": cooperativeId,
        "name": name,
        "fields_type": fieldsType,
        "is_complete": isComplete,
        "position": position,
        "last_updated_by": lastUpdatedBy,
        "created_at": createdAt.toIso8601String(),
        "updated_at": updatedAt.toIso8601String(),
        "is_member_field": isMemberField,
        "field_type": fieldType,
        "alter_id": alterId,
        "fields": List<dynamic>.from(fields.map((x) => x.toMap())),
        "fields_count": fieldsCount,
      };
}

class Field {
  Field({
    required this.label,
    required this.position,
    required this.conditions,
    required this.fieldType,
    required this.description,
    required this.isRequired,
    required this.fieldOptions,
    required this.fieldInputName,
    required this.isDynamic,
    this.rows,
    required this.isMultiple,
  });

  dynamic label;
  dynamic position;
  List<Condition> conditions;
  dynamic fieldType;
  dynamic description;
  dynamic isRequired;
  dynamic fieldOptions;
  dynamic fieldInputName;
  dynamic isDynamic;
  Map<String, dynamic>? rows;
  dynamic isMultiple;

  factory Field.fromMap(Map<String, dynamic> json) => Field(
        label: json["label"],
        position: json["position"] == null ? null : json["position"],
        conditions: List<Condition>.from(
            json["conditions"].map((x) => Condition.fromMap(x))),
        fieldType:
            json["field_type"] == null ? null : jsonDecode(json["field_type"]),
        description: json["description"],
        isRequired: json["is_required"],
        fieldOptions: json["field_options"] == null
            ? []
            : jsonDecode(json["field_options"]),
        fieldInputName: json["field_input_name"],
        isDynamic: json["is_dynamic"],
        rows: json["rows"] == null ? null : json['rows'],
        isMultiple: json["is_multiple"],
      );

  Map<String, dynamic> toMap() => {
        "label": label,
        "position": position == null ? null : position,
        "conditions": List<dynamic>.from(conditions.map((x) => x.toMap())),
        "field_type": fieldType,
        "description": description,
        "is_required": isRequired,
        "field_options": fieldOptions,
        "field_input_name": fieldInputName,
        "is_dynamic": isDynamic,
        "is_multiple": isMultiple,
      };
}

class Condition {
  Condition({
    required this.logic,
    required this.field,
    required this.response,
  });

  dynamic logic;
  dynamic field;
  dynamic response;

  factory Condition.fromMap(Map<String, dynamic> json) => Condition(
        logic: json["logic"],
        field: json["field"] == null ? null : json["field"],
        response: json["response"],
      );

  Map<String, dynamic> toMap() => {
        "logic": logic,
        "field": field,
        "response": response,
      };
}
