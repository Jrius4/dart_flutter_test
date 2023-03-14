// To parse this JSON data, do
//
//     final formData = formDataFromJson(jsonString);

import 'dart:convert';

class FormData {
  FormData({
    this.categories,
  });

  List<Category>? categories;

  FormData copyWith({
    List<Category>? categories,
  }) =>
      FormData(
        categories: categories ?? this.categories,
      );

  factory FormData.fromRawJson(String str) =>
      FormData.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory FormData.fromJson(Map<String, dynamic> json) => FormData(
        categories: json["Categories"] == null
            ? []
            : List<Category>.from(
                json["Categories"]!.map((x) => Category.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "Categories": categories == null
            ? []
            : List<dynamic>.from(categories!.map((x) => x.toJson())),
      };
}

class Category {
  Category({
    this.id,
    this.cooperativeId,
    this.name,
    this.fieldsType,
    this.isComplete,
    this.position,
    this.lastUpdatedBy,
    this.createdAt,
    this.updatedAt,
    this.isMemberField,
    this.fieldType,
    this.alterId,
    this.fields,
    this.fieldsCount,
  });

  int? id;
  dynamic cooperativeId;
  String? name;
  String? fieldsType;
  int? isComplete;
  int? position;
  int? lastUpdatedBy;
  DateTime? createdAt;
  DateTime? updatedAt;
  int? isMemberField;
  String? fieldType;
  int? alterId;
  List<Field>? fields;
  int? fieldsCount;

  Category copyWith({
    int? id,
    dynamic cooperativeId,
    String? name,
    String? fieldsType,
    int? isComplete,
    int? position,
    int? lastUpdatedBy,
    DateTime? createdAt,
    DateTime? updatedAt,
    int? isMemberField,
    String? fieldType,
    int? alterId,
    List<Field>? fields,
    int? fieldsCount,
  }) =>
      Category(
        id: id ?? this.id,
        cooperativeId: cooperativeId ?? this.cooperativeId,
        name: name ?? this.name,
        fieldsType: fieldsType ?? this.fieldsType,
        isComplete: isComplete ?? this.isComplete,
        position: position ?? this.position,
        lastUpdatedBy: lastUpdatedBy ?? this.lastUpdatedBy,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt,
        isMemberField: isMemberField ?? this.isMemberField,
        fieldType: fieldType ?? this.fieldType,
        alterId: alterId ?? this.alterId,
        fields: fields ?? this.fields,
        fieldsCount: fieldsCount ?? this.fieldsCount,
      );

  factory Category.fromRawJson(String str) =>
      Category.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Category.fromJson(Map<String, dynamic> json) => Category(
        id: json["id"],
        cooperativeId: json["cooperative_id"],
        name: json["name"],
        fieldsType: json["fields_type"],
        isComplete: json["is_complete"],
        position: json["position"],
        lastUpdatedBy: json["last_updated_by"],
        createdAt: json["created_at"] == null
            ? null
            : DateTime.parse(json["created_at"]),
        updatedAt: json["updated_at"] == null
            ? null
            : DateTime.parse(json["updated_at"]),
        isMemberField: json["is_member_field"],
        fieldType: json["field_type"],
        alterId: json["alter_id"],
        fields: json["fields"] == null
            ? []
            : List<Field>.from(json["fields"]!.map((x) => Field.fromJson(x))),
        fieldsCount: json["fields_count"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "cooperative_id": cooperativeId,
        "name": name,
        "fields_type": fieldsType,
        "is_complete": isComplete,
        "position": position,
        "last_updated_by": lastUpdatedBy,
        "created_at": createdAt?.toIso8601String(),
        "updated_at": updatedAt?.toIso8601String(),
        "is_member_field": isMemberField,
        "field_type": fieldType,
        "alter_id": alterId,
        "fields": fields == null
            ? []
            : List<dynamic>.from(fields!.map((x) => x.toJson())),
        "fields_count": fieldsCount,
      };
}

class Field {
  Field({
    this.label,
    this.position,
    this.conditions,
    this.fieldType,
    this.description,
    this.isRequired,
    this.fieldOptions,
    this.fieldInputName,
    this.isDynamic,
    this.rows,
    this.isMultiple,
  });

  String? label;
  String? position;
  List<Condition>? conditions;
  String? fieldType;
  String? description;
  Is? isRequired;
  String? fieldOptions;
  String? fieldInputName;
  Is? isDynamic;
  Map<String, Row>? rows;
  Is? isMultiple;

  Field copyWith({
    String? label,
    String? position,
    List<Condition>? conditions,
    String? fieldType,
    String? description,
    Is? isRequired,
    String? fieldOptions,
    String? fieldInputName,
    Is? isDynamic,
    Map<String, Row>? rows,
    Is? isMultiple,
  }) =>
      Field(
        label: label ?? this.label,
        position: position ?? this.position,
        conditions: conditions ?? this.conditions,
        fieldType: fieldType ?? this.fieldType,
        description: description ?? this.description,
        isRequired: isRequired ?? this.isRequired,
        fieldOptions: fieldOptions ?? this.fieldOptions,
        fieldInputName: fieldInputName ?? this.fieldInputName,
        isDynamic: isDynamic ?? this.isDynamic,
        rows: rows ?? this.rows,
        isMultiple: isMultiple ?? this.isMultiple,
      );

  factory Field.fromRawJson(String str) => Field.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Field.fromJson(Map<String, dynamic> json) => Field(
        label: json["label"],
        position: json["position"],
        conditions: json["conditions"] == null
            ? []
            : List<Condition>.from(
                json["conditions"]!.map((x) => Condition.fromJson(x))),
        fieldType: json["field_type"],
        description: json["description"],
        isRequired: isValues.map[json["is_required"]]!,
        fieldOptions: json["field_options"],
        fieldInputName: json["field_input_name"],
        isDynamic: isValues.map[json["is_dynamic"]]!,
        rows: Map.from(json["rows"]!)
            .map((k, v) => MapEntry<String, Row>(k, Row.fromJson(v))),
        isMultiple: isValues.map[json["is_multiple"]]!,
      );

  Map<String, dynamic> toJson() => {
        "label": label,
        "position": position,
        "conditions": conditions == null
            ? []
            : List<dynamic>.from(conditions!.map((x) => x.toJson())),
        "field_type": fieldType,
        "description": description,
        "is_required": isValues.reverse[isRequired],
        "field_options": fieldOptions,
        "field_input_name": fieldInputName,
        "is_dynamic": isValues.reverse[isDynamic],
        "rows": Map.from(rows!)
            .map((k, v) => MapEntry<String, dynamic>(k, v.toJson())),
        "is_multiple": isValues.reverse[isMultiple],
      };
}

class Condition {
  Condition({
    this.logic,
    this.field,
    this.response,
  });

  Logic? logic;
  String? field;
  Response? response;

  Condition copyWith({
    Logic? logic,
    String? field,
    Response? response,
  }) =>
      Condition(
        logic: logic ?? this.logic,
        field: field ?? this.field,
        response: response ?? this.response,
      );

  factory Condition.fromRawJson(String str) =>
      Condition.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Condition.fromJson(Map<String, dynamic> json) => Condition(
        logic: logicValues.map[json["logic"]]!,
        field: json["field"],
        response: responseValues.map[json["response"]]!,
      );

  Map<String, dynamic> toJson() => {
        "logic": logicValues.reverse[logic],
        "field": field,
        "response": responseValues.reverse[response],
      };
}

enum Logic { SELECTED }

final logicValues = EnumValues({"selected": Logic.SELECTED});

enum Response {
  NO,
  YES,
  LAST_YEAR,
  ALTERNATIVE_DATE,
  WAR,
  MACHINERY,
  LAND,
  MARRIED,
  EMPLOYED,
  FARMER,
  TRADER
}

final responseValues = EnumValues({
  "Alternative Date": Response.ALTERNATIVE_DATE,
  "Employed": Response.EMPLOYED,
  "Farmer": Response.FARMER,
  "Land": Response.LAND,
  "Last Year": Response.LAST_YEAR,
  "Machinery": Response.MACHINERY,
  "Married": Response.MARRIED,
  "No": Response.NO,
  "Trader": Response.TRADER,
  "War": Response.WAR,
  "Yes": Response.YES
});

enum Is { ON }

final isValues = EnumValues({"on": Is.ON});

class Row {
  Row({
    this.name,
    this.type,
    this.values,
  });

  String? name;
  Type? type;
  String? values;

  Row copyWith({
    String? name,
    Type? type,
    String? values,
  }) =>
      Row(
        name: name ?? this.name,
        type: type ?? this.type,
        values: values ?? this.values,
      );

  factory Row.fromRawJson(String str) => Row.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Row.fromJson(Map<String, dynamic> json) => Row(
        name: json["name"],
        type: typeValues.map[json["type"]]!,
        values: json["values"],
      );

  Map<String, dynamic> toJson() => {
        "name": name,
        "type": typeValues.reverse[type],
        "values": values,
      };
}

enum Type { DROPDOWN, ALPHANUMERIC_RESPONSES, NUMERIC_RESPONSES }

final typeValues = EnumValues({
  "Alphanumeric Responses": Type.ALPHANUMERIC_RESPONSES,
  "Dropdown": Type.DROPDOWN,
  "Numeric Responses": Type.NUMERIC_RESPONSES
});

class EnumValues<T> {
  Map<String, T> map;
  late Map<T, String> reverseMap;

  EnumValues(this.map);

  Map<T, String> get reverse {
    reverseMap = map.map((k, v) => MapEntry(v, k));
    return reverseMap;
  }
}
