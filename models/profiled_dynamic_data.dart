// To parse this JSON data, do
//
//     final profileDynamicData = profileDynamicDataFromJson(jsonString);

import 'dart:convert' as convert;

ProfileDynamicData profileDynamicDataFromJson(String str) =>
    ProfileDynamicData.fromJson(convert.jsonDecode(str));

String profileDynamicDataToJson(ProfileDynamicData data) =>
    convert.jsonEncode(data.toJson());

class ProfileDynamicData {
  ProfileDynamicData({
    this.edit,
    this.formData,
  });

  Edit? edit;
  List<FormDatum>? formData;

  ProfileDynamicData copyWith({
    Edit? edit,
    List<FormDatum>? formData,
  }) =>
      ProfileDynamicData(
        edit: edit ?? this.edit,
        formData: formData ?? this.formData,
      );

  factory ProfileDynamicData.fromJson(Map<String, dynamic> json) =>
      ProfileDynamicData(
        edit: json["edit"] == null ? null : Edit.fromJson(json["edit"]),
        formData: json["formData"] == null
            ? []
            : List<FormDatum>.from(
                json["formData"]!.map((x) => FormDatum.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "edit": edit?.toJson(),
        "formData": formData == null
            ? []
            : List<dynamic>.from(formData!.map((x) => x.toJson())),
      };
}

class Edit {
  Edit({
    this.editDynamic,
    this.editStatic,
  });

  List<DynamicData>? editDynamic;
  Static? editStatic;

  Edit copyWith({
    List<DynamicData>? editDynamic,
    Static? editStatic,
  }) =>
      Edit(
        editDynamic: editDynamic ?? this.editDynamic,
        editStatic: editStatic ?? this.editStatic,
      );

  factory Edit.fromJson(Map<String, dynamic> json) => Edit(
        editDynamic: json["dynamic"] == null
            ? []
            : List<DynamicData>.from(
                json["dynamic"]!.map((x) => DynamicData.fromJson(x))),
        editStatic:
            json["static"] == null ? null : Static.fromJson(json["static"]),
      );

  Map<String, dynamic> toJson() => {
        "dynamic": editDynamic == null
            ? []
            : List<dynamic>.from(editDynamic!.map((x) => x.toJson())),
        "static": editStatic?.toJson(),
      };
}

class DynamicData {
  DynamicData({
    this.formData,
    this.categoryId,
    this.category,
    this.header,
  });

  dynamic formData;
  int? categoryId;
  dynamic category;
  FormDatum? header;

  DynamicData copyWith({
    dynamic formData,
    int? categoryId,
    dynamic category,
    FormDatum? header,
  }) =>
      DynamicData(
        formData: formData ?? this.formData,
        categoryId: categoryId ?? this.categoryId,
        category: category ?? this.category,
        header: header ?? this.header,
      );

  factory DynamicData.fromJson(Map<String, dynamic> json) => DynamicData(
        formData: json["formData"] == null ? null : json["formData"],
        categoryId: json["category_id"],
        category: json["category"],
        header:
            json["header"] == null ? null : FormDatum.fromJson(json["header"]),
      );

  Map<String, dynamic> toJson() => {
        "formData": formData?.toJson(),
        "category_id": categoryId,
        "category": category,
        "header": header?.toJson(),
      };
}

class FieldsTypeElement {
  FieldsTypeElement({
    this.label,
    this.position,
    this.conditions,
    this.fieldType,
    this.description,
    this.fieldOptions,
    this.fieldInputName,
    this.isRequired,
    this.isDynamic,
    this.rows,
    this.isMultiple,
  });

  String? label;
  String? position;
  List<Condition>? conditions;
  String? fieldType;
  dynamic description;
  String? fieldOptions;
  String? fieldInputName;
  Is? isRequired;
  Is? isDynamic;
  Map<String, Row>? rows;
  Is? isMultiple;

  FieldsTypeElement copyWith({
    String? label,
    String? position,
    List<Condition>? conditions,
    String? fieldType,
    dynamic description,
    String? fieldOptions,
    String? fieldInputName,
    Is? isRequired,
    Is? isDynamic,
    Map<String, Row>? rows,
    Is? isMultiple,
  }) =>
      FieldsTypeElement(
        label: label ?? this.label,
        position: position ?? this.position,
        conditions: conditions ?? this.conditions,
        fieldType: fieldType ?? this.fieldType,
        description: description ?? this.description,
        fieldOptions: fieldOptions ?? this.fieldOptions,
        fieldInputName: fieldInputName ?? this.fieldInputName,
        isRequired: isRequired ?? this.isRequired,
        isDynamic: isDynamic ?? this.isDynamic,
        rows: rows ?? this.rows,
        isMultiple: isMultiple ?? this.isMultiple,
      );

  factory FieldsTypeElement.fromJson(Map<String, dynamic> json) =>
      FieldsTypeElement(
        label: json["label"],
        position: json["position"],
        conditions: json["conditions"] == null
            ? []
            : List<Condition>.from(
                json["conditions"]!.map((x) => Condition.fromJson(x))),
        fieldType: json["field_type"],
        description: json["description"],
        fieldOptions: json["field_options"],
        fieldInputName: json["field_input_name"],
        isRequired: isValues.map[json["is_required"]]!,
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
        "field_options": fieldOptions,
        "field_input_name": fieldInputName,
        "is_required": isValues.reverse[isRequired],
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
  dynamic response;

  Condition copyWith({
    Logic? logic,
    String? field,
    dynamic response,
  }) =>
      Condition(
        logic: logic ?? this.logic,
        field: field ?? this.field,
        response: response ?? this.response,
      );

  factory Condition.fromJson(Map<String, dynamic> json) => Condition(
        logic: logicValues.map[json["logic"]]!,
        field: json["field"],
        response: json["response"],
      );

  Map<String, dynamic> toJson() => {
        "logic": logicValues.reverse[logic],
        "field": field,
        "response": response,
      };
}

enum Logic { SELECTED }

final logicValues = EnumValues({"selected": Logic.SELECTED});

enum Is { ON }

final isValues = EnumValues({"on": Is.ON});

class Row {
  Row({
    this.name,
    this.type,
    this.values,
  });

  String? name;
  RowType? type;
  String? values;

  Row copyWith({
    String? name,
    RowType? type,
    String? values,
  }) =>
      Row(
        name: name ?? this.name,
        type: type ?? this.type,
        values: values ?? this.values,
      );

  factory Row.fromJson(Map<String, dynamic> json) => Row(
        name: json["name"],
        type: rowTypeValues.map[json["type"]]!,
        values: json["values"],
      );

  Map<String, dynamic> toJson() => {
        "name": name,
        "type": rowTypeValues.reverse[type],
        "values": values,
      };
}

enum RowType { ALPHANUMERIC_RESPONSES, DROPDOWN, NUMERIC_RESPONSES }

final rowTypeValues = EnumValues({
  "Alphanumeric Responses": RowType.ALPHANUMERIC_RESPONSES,
  "Dropdown": RowType.DROPDOWN,
  "Numeric Responses": RowType.NUMERIC_RESPONSES
});

class FieldsTypeValue {
  FieldsTypeValue({
    this.label,
    this.position,
    this.conditions,
    this.fieldType,
    this.description,
    this.isRequired,
    this.fieldOptions,
    this.fieldInputName,
    this.isDynamic,
  });

  String? label;
  String? position;
  List<Condition>? conditions;
  String? fieldType;
  dynamic description;
  Is? isRequired;
  String? fieldOptions;
  String? fieldInputName;
  Is? isDynamic;

  FieldsTypeValue copyWith({
    String? label,
    String? position,
    List<Condition>? conditions,
    String? fieldType,
    dynamic description,
    Is? isRequired,
    String? fieldOptions,
    String? fieldInputName,
    Is? isDynamic,
  }) =>
      FieldsTypeValue(
        label: label ?? this.label,
        position: position ?? this.position,
        conditions: conditions ?? this.conditions,
        fieldType: fieldType ?? this.fieldType,
        description: description ?? this.description,
        isRequired: isRequired ?? this.isRequired,
        fieldOptions: fieldOptions ?? this.fieldOptions,
        fieldInputName: fieldInputName ?? this.fieldInputName,
        isDynamic: isDynamic ?? this.isDynamic,
      );

  factory FieldsTypeValue.fromJson(Map<String, dynamic> json) =>
      FieldsTypeValue(
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
      };
}

class FormDatum {
  FormDatum({
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
  dynamic fieldsType;
  int? isComplete;
  int? position;
  int? lastUpdatedBy;
  DateTime? createdAt;
  DateTime? updatedAt;
  int? isMemberField;
  String? fieldType;
  dynamic alterId;
  List<Field>? fields;
  int? fieldsCount;

  FormDatum copyWith({
    int? id,
    dynamic cooperativeId,
    String? name,
    dynamic fieldsType,
    int? isComplete,
    int? position,
    int? lastUpdatedBy,
    DateTime? createdAt,
    DateTime? updatedAt,
    int? isMemberField,
    String? fieldType,
    dynamic alterId,
    List<Field>? fields,
    int? fieldsCount,
  }) =>
      FormDatum(
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

  factory FormDatum.fromJson(Map<String, dynamic> json) => FormDatum(
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
    this.isMultiple,
  });

  String? label;
  String? position;
  List<Condition>? conditions;
  FieldType? fieldType;
  dynamic description;
  Is? isRequired;
  dynamic fieldOptions;
  String? fieldInputName;
  Is? isDynamic;
  Is? isMultiple;

  Field copyWith({
    String? label,
    String? position,
    List<Condition>? conditions,
    FieldType? fieldType,
    dynamic description,
    Is? isRequired,
    dynamic fieldOptions,
    String? fieldInputName,
    Is? isDynamic,
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
        isMultiple: isMultiple ?? this.isMultiple,
      );

  factory Field.fromJson(Map<String, dynamic> json) => Field(
        label: json["label"],
        position: json["position"],
        conditions: json["conditions"] == null
            ? []
            : List<Condition>.from(
                json["conditions"]!.map((x) => Condition.fromJson(x))),
        fieldType: json["field_type"] == null
            ? null
            : FieldType.fromJson(json["field_type"]),
        description: json["description"],
        isRequired: isValues.map[json["is_required"]]!,
        fieldOptions: json["field_options"],
        fieldInputName: json["field_input_name"],
        isDynamic: isValues.map[json["is_dynamic"]]!,
        isMultiple: isValues.map[json["is_multiple"]]!,
      );

  Map<String, dynamic> toJson() => {
        "label": label,
        "position": position,
        "conditions": conditions == null
            ? []
            : List<dynamic>.from(conditions!.map((x) => x.toJson())),
        "field_type": fieldType?.toJson(),
        "description": description,
        "is_required": isValues.reverse[isRequired],
        "field_options": fieldOptions,
        "field_input_name": fieldInputName,
        "is_dynamic": isValues.reverse[isDynamic],
        "is_multiple": isValues.reverse[isMultiple],
      };
}

class FieldOption {
  FieldOption({
    this.label,
    this.name,
    this.choice,
    this.value,
    this.type,
    this.text,
    this.values,
  });

  bool? label;
  String? name;
  Choice? choice;
  String? value;
  FieldOptionType? type;
  String? text;
  String? values;

  FieldOption copyWith({
    bool? label,
    String? name,
    Choice? choice,
    String? value,
    FieldOptionType? type,
    String? text,
    String? values,
  }) =>
      FieldOption(
        label: label ?? this.label,
        name: name ?? this.name,
        choice: choice ?? this.choice,
        value: value ?? this.value,
        type: type ?? this.type,
        text: text ?? this.text,
        values: values ?? this.values,
      );

  factory FieldOption.fromJson(Map<String, dynamic> json) => FieldOption(
        label: json["label"],
        name: json["name"],
        choice: choiceValues.map[json["choice"]]!,
        value: json["value"],
        type: fieldOptionTypeValues.map[json["type"]]!,
        text: json["text"],
        values: json["values"],
      );

  Map<String, dynamic> toJson() => {
        "label": label,
        "name": name,
        "choice": choiceValues.reverse[choice],
        "value": value,
        "type": fieldOptionTypeValues.reverse[type],
        "text": text,
        "values": values,
      };
}

enum Choice { CHOICE, CURRENCY }

final choiceValues =
    EnumValues({"choice": Choice.CHOICE, "currency": Choice.CURRENCY});

enum FieldOptionType { TEXT, NUMBER, SELECT }

final fieldOptionTypeValues = EnumValues({
  "number": FieldOptionType.NUMBER,
  "select": FieldOptionType.SELECT,
  "text": FieldOptionType.TEXT
});

class FieldOptionsClass {
  FieldOptionsClass({
    this.label,
    this.name,
    this.value,
    this.type,
    this.choice,
  });

  bool? label;
  String? name;
  String? value;
  FieldOptionsType? type;
  Choice? choice;

  FieldOptionsClass copyWith({
    bool? label,
    String? name,
    String? value,
    FieldOptionsType? type,
    Choice? choice,
  }) =>
      FieldOptionsClass(
        label: label ?? this.label,
        name: name ?? this.name,
        value: value ?? this.value,
        type: type ?? this.type,
        choice: choice ?? this.choice,
      );

  factory FieldOptionsClass.fromJson(Map<String, dynamic> json) =>
      FieldOptionsClass(
        label: json["label"],
        name: json["name"],
        value: json["value"],
        type: fieldOptionsTypeValues.map[json["type"]]!,
        choice: choiceValues.map[json["choice"]]!,
      );

  Map<String, dynamic> toJson() => {
        "label": label,
        "name": name,
        "value": value,
        "type": fieldOptionsTypeValues.reverse[type],
        "choice": choiceValues.reverse[choice],
      };
}

enum FieldOptionsType {
  TEXT,
  NUMBER,
  DATE,
  RADIO,
  CHECKBOX,
  TABLE,
  CURRENCY,
  PERCENTAGE
}

final fieldOptionsTypeValues = EnumValues({
  "checkbox": FieldOptionsType.CHECKBOX,
  "currency": FieldOptionsType.CURRENCY,
  "date": FieldOptionsType.DATE,
  "number": FieldOptionsType.NUMBER,
  "percentage": FieldOptionsType.PERCENTAGE,
  "radio": FieldOptionsType.RADIO,
  "table": FieldOptionsType.TABLE,
  "text": FieldOptionsType.TEXT
});

class FieldType {
  FieldType({
    this.type,
    this.name,
    this.icon,
    this.isDynamic,
    this.orderble,
    this.returnType,
    this.proposedDashbordVisual,
    this.proposedDashbordVisualBar,
    this.placeholder,
    this.defaultInputs,
    this.iconUrl,
    this.text,
    this.value,
  });

  FieldOptionsType? type;
  Name? name;
  Icon? icon;
  bool? isDynamic;
  bool? orderble;
  ReturnType? returnType;
  ProposedDashbordVisual? proposedDashbordVisual;
  ProposedDashbordVisual? proposedDashbordVisualBar;
  String? placeholder;
  dynamic defaultInputs;
  IconUrl? iconUrl;
  Name? text;
  String? value;

  FieldType copyWith({
    FieldOptionsType? type,
    Name? name,
    Icon? icon,
    bool? isDynamic,
    bool? orderble,
    ReturnType? returnType,
    ProposedDashbordVisual? proposedDashbordVisual,
    ProposedDashbordVisual? proposedDashbordVisualBar,
    String? placeholder,
    dynamic defaultInputs,
    IconUrl? iconUrl,
    Name? text,
    String? value,
  }) =>
      FieldType(
        type: type ?? this.type,
        name: name ?? this.name,
        icon: icon ?? this.icon,
        isDynamic: isDynamic ?? this.isDynamic,
        orderble: orderble ?? this.orderble,
        returnType: returnType ?? this.returnType,
        proposedDashbordVisual:
            proposedDashbordVisual ?? this.proposedDashbordVisual,
        proposedDashbordVisualBar:
            proposedDashbordVisualBar ?? this.proposedDashbordVisualBar,
        placeholder: placeholder ?? this.placeholder,
        defaultInputs: defaultInputs ?? this.defaultInputs,
        iconUrl: iconUrl ?? this.iconUrl,
        text: text ?? this.text,
        value: value ?? this.value,
      );

  factory FieldType.fromJson(Map<String, dynamic> json) => FieldType(
        type: fieldOptionsTypeValues.map[json["type"]]!,
        name: nameValues.map[json["name"]]!,
        icon: iconValues.map[json["icon"]]!,
        isDynamic: json["is_dynamic"],
        orderble: json["orderble"],
        returnType: returnTypeValues.map[json["return_type"]]!,
        proposedDashbordVisual:
            proposedDashbordVisualValues.map[json["proposed_dashbord_visual"]]!,
        proposedDashbordVisualBar: proposedDashbordVisualValues
            .map[json["proposed_dashbord_visual_bar"]]!,
        placeholder: json["placeholder"],
        defaultInputs: json["default_inputs"],
        iconUrl: iconUrlValues.map[json["iconUrl"]]!,
        text: nameValues.map[json["text"]]!,
        value: json["value"],
      );

  Map<String, dynamic> toJson() => {
        "type": fieldOptionsTypeValues.reverse[type],
        "name": nameValues.reverse[name],
        "icon": iconValues.reverse[icon],
        "is_dynamic": isDynamic,
        "orderble": orderble,
        "return_type": returnTypeValues.reverse[returnType],
        "proposed_dashbord_visual":
            proposedDashbordVisualValues.reverse[proposedDashbordVisual],
        "proposed_dashbord_visual_bar":
            proposedDashbordVisualValues.reverse[proposedDashbordVisualBar],
        "placeholder": placeholder,
        "default_inputs": defaultInputs,
        "iconUrl": iconUrlValues.reverse[iconUrl],
        "text": nameValues.reverse[text],
        "value": value,
      };
}

enum Icon {
  FAR_FA_DOT_CIRCLE,
  FAS_FA_CHECK_SQUARE,
  FAS_FA_TEXT_WIDTH,
  FAS_FA_TH,
  FAS_FA_SORT_NUMERIC_UP
}

final iconValues = EnumValues({
  "far fa-dot-circle": Icon.FAR_FA_DOT_CIRCLE,
  "fas fa-check-square": Icon.FAS_FA_CHECK_SQUARE,
  "fas fa-sort-numeric-up": Icon.FAS_FA_SORT_NUMERIC_UP,
  "fas fa-text-width": Icon.FAS_FA_TEXT_WIDTH,
  "fas fa-th": Icon.FAS_FA_TH
});

enum IconUrl {
  IMAGES_ICONS_ICONALPHANUMERIC_PNG,
  IMAGES_ICONS_ICONS_TABLES_PNG,
  IMAGES_ICONS_ICONS_CURRENCIES_PNG,
  IMAGES_ICONS_ICONNUMERIC_PNG,
  IMAGES_ICONS_ICONS_PERCENTAGES_PNG,
  IMAGES_ICONS_ICONDATE_PNG
}

final iconUrlValues = EnumValues({
  "/images/icons/iconalphanumeric.png":
      IconUrl.IMAGES_ICONS_ICONALPHANUMERIC_PNG,
  "/images/icons/icondate.png": IconUrl.IMAGES_ICONS_ICONDATE_PNG,
  "/images/icons/iconnumeric.png": IconUrl.IMAGES_ICONS_ICONNUMERIC_PNG,
  "/images/icons/icons.currencies.png":
      IconUrl.IMAGES_ICONS_ICONS_CURRENCIES_PNG,
  "/images/icons/icons.percentages.png":
      IconUrl.IMAGES_ICONS_ICONS_PERCENTAGES_PNG,
  "/images/icons/icons.tables.png": IconUrl.IMAGES_ICONS_ICONS_TABLES_PNG
});

enum Name {
  YES_NO,
  MULTIPLE_CHOICE,
  CHECKBOXES,
  ALPHANUMERIC_RESPONSES,
  TABLE,
  CURRENCIES,
  NUMERIC_RESPONSES,
  PERCENTAGES,
  DATE
}

final nameValues = EnumValues({
  "Alphanumeric Responses": Name.ALPHANUMERIC_RESPONSES,
  "Checkboxes": Name.CHECKBOXES,
  "Currencies": Name.CURRENCIES,
  "Date": Name.DATE,
  "Multiple Choice": Name.MULTIPLE_CHOICE,
  "Numeric Responses": Name.NUMERIC_RESPONSES,
  "Percentages": Name.PERCENTAGES,
  "Table": Name.TABLE,
  "Yes/No": Name.YES_NO
});

enum ProposedDashbordVisual {
  IMAGES_ICON_PIE_CHART_PNG,
  IMAGES_ICON_BAR_GRAPH_PNG
}

final proposedDashbordVisualValues = EnumValues({
  "/images/icon_bar_graph.png":
      ProposedDashbordVisual.IMAGES_ICON_BAR_GRAPH_PNG,
  "/images/icon_pie_chart.png": ProposedDashbordVisual.IMAGES_ICON_PIE_CHART_PNG
});

enum ReturnType { STRING, ARRAY, INT, DOUBLE }

final returnTypeValues = EnumValues({
  "array": ReturnType.ARRAY,
  "double": ReturnType.DOUBLE,
  "int": ReturnType.INT,
  "string": ReturnType.STRING
});

class Static {
  Static({
    this.id,
    this.cooperativeId,
    this.fieldData,
    this.name,
    this.probRegDate,
    this.permRegDate,
    this.permRegNum,
    this.proRegNum,
    this.isComplete,
    this.physicalOfficeRes,
    this.ownershipStatusRes,
    this.address,
    this.district,
    this.subCounty,
    this.parish,
    this.village,
    this.createdAt,
    this.updatedAt,
    this.dateCaptured,
    this.updateStatus,
  });

  int? id;
  int? cooperativeId;
  List<FieldDatum>? fieldData;
  String? name;
  DateTime? probRegDate;
  dynamic permRegDate;
  dynamic permRegNum;
  String? proRegNum;
  int? isComplete;
  dynamic physicalOfficeRes;
  String? ownershipStatusRes;
  String? address;
  String? district;
  String? subCounty;
  String? parish;
  String? village;
  DateTime? createdAt;
  DateTime? updatedAt;
  DateTime? dateCaptured;
  int? updateStatus;

  Static copyWith({
    int? id,
    int? cooperativeId,
    List<FieldDatum>? fieldData,
    String? name,
    DateTime? probRegDate,
    dynamic permRegDate,
    dynamic permRegNum,
    String? proRegNum,
    int? isComplete,
    dynamic? physicalOfficeRes,
    String? ownershipStatusRes,
    String? address,
    String? district,
    String? subCounty,
    String? parish,
    String? village,
    DateTime? createdAt,
    DateTime? updatedAt,
    DateTime? dateCaptured,
    int? updateStatus,
  }) =>
      Static(
        id: id ?? this.id,
        cooperativeId: cooperativeId ?? this.cooperativeId,
        fieldData: fieldData ?? this.fieldData,
        name: name ?? this.name,
        probRegDate: probRegDate ?? this.probRegDate,
        permRegDate: permRegDate ?? this.permRegDate,
        permRegNum: permRegNum ?? this.permRegNum,
        proRegNum: proRegNum ?? this.proRegNum,
        isComplete: isComplete ?? this.isComplete,
        physicalOfficeRes: physicalOfficeRes ?? this.physicalOfficeRes,
        ownershipStatusRes: ownershipStatusRes ?? this.ownershipStatusRes,
        address: address ?? this.address,
        district: district ?? this.district,
        subCounty: subCounty ?? this.subCounty,
        parish: parish ?? this.parish,
        village: village ?? this.village,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt,
        dateCaptured: dateCaptured ?? this.dateCaptured,
        updateStatus: updateStatus ?? this.updateStatus,
      );

  factory Static.fromJson(Map<String, dynamic> json) => Static(
        id: json["id"],
        cooperativeId: json["cooperative_id"],
        fieldData: json["field_data"] == null
            ? []
            : List<FieldDatum>.from(
                json["field_data"]!.map((x) => FieldDatum.fromJson(x))),
        name: json["name"],
        probRegDate: json["prob_reg_date"] == null
            ? null
            : DateTime.parse(json["prob_reg_date"]),
        permRegDate: json["perm_reg_date"],
        permRegNum: json["perm_reg_num"],
        proRegNum: json["pro_reg_num"],
        isComplete: json["is_complete"],
        physicalOfficeRes: json["physical_office_res"] == null
            ? null
            : json["physical_office_res"],
        ownershipStatusRes: json["ownership_status_res"],
        address: json["address"],
        district: json["district"],
        subCounty: json["sub_county"],
        parish: json["parish"],
        village: json["village"],
        createdAt: json["created_at"] == null
            ? null
            : DateTime.parse(json["created_at"]),
        updatedAt: json["updated_at"] == null
            ? null
            : DateTime.parse(json["updated_at"]),
        dateCaptured: json["date_captured"] == null
            ? null
            : DateTime.parse(json["date_captured"]),
        updateStatus: json["update_status"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "cooperative_id": cooperativeId,
        "field_data": fieldData == null
            ? []
            : List<dynamic>.from(fieldData!.map((x) => x.toJson())),
        "name": name,
        "prob_reg_date":
            "${probRegDate!.year.toString().padLeft(4, '0')}-${probRegDate!.month.toString().padLeft(2, '0')}-${probRegDate!.day.toString().padLeft(2, '0')}",
        "perm_reg_date": permRegDate,
        "perm_reg_num": permRegNum,
        "pro_reg_num": proRegNum,
        "is_complete": isComplete,
        "physical_office_res":
            physicalOfficeRes == null ? [] : physicalOfficeRes,
        "ownership_status_res": ownershipStatusRes,
        "address": address,
        "district": district,
        "sub_county": subCounty,
        "parish": parish,
        "village": village,
        "created_at": createdAt?.toIso8601String(),
        "updated_at": updatedAt?.toIso8601String(),
        "date_captured": dateCaptured?.toIso8601String(),
        "update_status": updateStatus,
      };
}

class FieldDatum {
  FieldDatum({
    this.formData,
    this.categoryId,
  });

  String? formData;
  int? categoryId;

  FieldDatum copyWith({
    String? formData,
    int? categoryId,
  }) =>
      FieldDatum(
        formData: formData ?? this.formData,
        categoryId: categoryId ?? this.categoryId,
      );

  factory FieldDatum.fromJson(Map<String, dynamic> json) => FieldDatum(
        formData: json["formData"] == null
            ? null
            : convert.jsonDecode(json["formData"]),
        categoryId: json["category_id"],
      );

  Map<String, dynamic> toJson() => {
        "formData": formData,
        "category_id": categoryId,
      };
}

class EnumValues<T> {
  Map<String, T> map;
  late Map<T, String> reverseMap;

  EnumValues(this.map);

  Map<T, String> get reverse {
    reverseMap = map.map((k, v) => MapEntry(v, k));
    return reverseMap;
  }
}
