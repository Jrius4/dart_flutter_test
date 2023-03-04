// To parse this JSON data, do
//
//     final cooperatives = cooperativesFromJson(jsonString);

import 'dart:convert';

class IndividualMember {
  IndividualMember({
    this.id,
    this.cooperativeId,
    this.groupId,
    this.fieldData,
    this.createdAt,
    this.updatedAt,
    this.isComplete,
    this.position,
    this.dateCaptured,
    this.name,
    this.admissionDate,
    this.membershipNo,
    this.dob,
    this.age,
    this.nationality,
    this.idType,
    this.idNumber,
    this.address,
    this.district,
    this.subCounty,
    this.parish,
    this.village,
    this.pictureName,
    this.isIndivMember,
    this.doneFrom,
    this.doneAt,
    this.fields,
    this.formData,
  });

  int? id;
  int? cooperativeId;
  int? groupId;
  String? fieldData;
  DateTime? createdAt;
  DateTime? updatedAt;
  int? isComplete;
  dynamic position;
  DateTime? dateCaptured;
  String? name;
  DateTime? admissionDate;
  String? membershipNo;
  DateTime? dob;
  String? age;
  Nationality? nationality;
  IdType? idType;
  String? idNumber;
  String? address;
  String? district;
  String? subCounty;
  String? parish;
  String? village;
  String? pictureName;
  String? isIndivMember;
  String? doneFrom;
  DateTime? doneAt;
  List<Field>? fields;
  List<FormDatumElement>? formData;

  IndividualMember copyWith({
    int? id,
    int? cooperativeId,
    int? groupId,
    String? fieldData,
    DateTime? createdAt,
    DateTime? updatedAt,
    int? isComplete,
    dynamic position,
    DateTime? dateCaptured,
    String? name,
    DateTime? admissionDate,
    String? membershipNo,
    DateTime? dob,
    String? age,
    Nationality? nationality,
    IdType? idType,
    String? idNumber,
    String? address,
    String? district,
    String? subCounty,
    String? parish,
    String? village,
    String? pictureName,
    String? isIndivMember,
    String? doneFrom,
    DateTime? doneAt,
    List<Field>? fields,
    List<FormDatumElement>? formData,
  }) =>
      IndividualMember(
        id: id ?? this.id,
        cooperativeId: cooperativeId ?? this.cooperativeId,
        groupId: groupId ?? this.groupId,
        fieldData: fieldData ?? this.fieldData,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt,
        isComplete: isComplete ?? this.isComplete,
        position: position ?? this.position,
        dateCaptured: dateCaptured ?? this.dateCaptured,
        name: name ?? this.name,
        admissionDate: admissionDate ?? this.admissionDate,
        membershipNo: membershipNo ?? this.membershipNo,
        dob: dob ?? this.dob,
        age: age ?? this.age,
        nationality: nationality ?? this.nationality,
        idType: idType ?? this.idType,
        idNumber: idNumber ?? this.idNumber,
        address: address ?? this.address,
        district: district ?? this.district,
        subCounty: subCounty ?? this.subCounty,
        parish: parish ?? this.parish,
        village: village ?? this.village,
        pictureName: pictureName ?? this.pictureName,
        isIndivMember: isIndivMember ?? this.isIndivMember,
        doneFrom: doneFrom ?? this.doneFrom,
        doneAt: doneAt ?? this.doneAt,
        fields: fields ?? this.fields,
        formData: formData ?? this.formData,
      );

  factory IndividualMember.fromRawJson(String str) =>
      IndividualMember.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory IndividualMember.fromJson(Map<String, dynamic> json) =>
      IndividualMember(
        id: json["id"],
        cooperativeId: json["cooperative_id"],
        groupId: json["group_id"],
        fieldData: json["field_data"],
        createdAt: json["created_at"] == null
            ? null
            : DateTime.parse(json["created_at"]),
        updatedAt: json["updated_at"] == null
            ? null
            : DateTime.parse(json["updated_at"]),
        isComplete: json["is_complete"],
        position: json["position"],
        dateCaptured: json["date_captured"] == null
            ? null
            : DateTime.parse(json["date_captured"]),
        name: json["name"],
        admissionDate: json["admission_date"] == null
            ? null
            : DateTime.parse(json["admission_date"]),
        membershipNo: json["membership_no"],
        dob: json["dob"] == null ? null : DateTime.parse(json["dob"]),
        age: json["age"],
        nationality: nationalityValues.map[json["nationality"]]!,
        idType: idTypeValues.map[json["id_type"]]!,
        idNumber: json["id_number"],
        address: json["address"],
        district: json["district"],
        subCounty: json["sub_county"],
        parish: json["parish"],
        village: json["village"],
        pictureName: json["picture_name"],
        isIndivMember: json["is_indiv_member"],
        doneFrom: json["done_from"],
        doneAt:
            json["done_at"] == null ? null : DateTime.parse(json["done_at"]),
        fields: json["fields"] == null
            ? []
            : List<Field>.from(json["fields"]!.map((x) => Field.fromJson(x))),
        formData: json["form_data"] == null
            ? []
            : List<FormDatumElement>.from(
                json["form_data"]!.map((x) => FormDatumElement.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "cooperative_id": cooperativeId,
        "group_id": groupId,
        "field_data": fieldData,
        "created_at": createdAt == null
            ? null
            : "${createdAt!.year.toString().padLeft(4, '0')}-${createdAt!.month.toString().padLeft(2, '0')}-${createdAt!.day.toString().padLeft(2, '0')}",
        "updated_at": updatedAt?.toIso8601String(),
        "is_complete": isComplete,
        "position": position,
        "date_captured": dateCaptured?.toIso8601String(),
        "name": name,
        "admission_date": admissionDate == null
            ? null
            : "${admissionDate!.year.toString().padLeft(4, '0')}-${admissionDate!.month.toString().padLeft(2, '0')}-${admissionDate!.day.toString().padLeft(2, '0')}",
        "membership_no": membershipNo,
        "dob": dob == null
            ? null
            : "${dob!.year.toString().padLeft(4, '0')}-${dob!.month.toString().padLeft(2, '0')}-${dob!.day.toString().padLeft(2, '0')}",
        "age": age,
        "nationality": nationalityValues.reverse[nationality],
        "id_type": idTypeValues.reverse[idType],
        "id_number": idNumber,
        "address": address,
        "district": district,
        "sub_county": subCounty,
        "parish": parish,
        "village": village,
        "picture_name": pictureName,
        "is_indiv_member": isIndivMember,
        "done_from": doneFrom,
        "done_at": doneAt?.toIso8601String(),
        "fields": fields == null
            ? []
            : List<dynamic>.from(fields!.map((x) => x.toJson())),
        "form_data": formData == null
            ? []
            : List<dynamic>.from(formData!.map((x) => x.toJson())),
      };
}

class Field {
  Field({
    this.formData,
    this.categoryId,
  });

  dynamic formData;
  int? categoryId;

  Field copyWith({
    dynamic formData,
    int? categoryId,
  }) =>
      Field(
        formData: formData ?? this.formData,
        categoryId: categoryId ?? this.categoryId,
      );

  factory Field.fromRawJson(String str) => Field.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Field.fromJson(Map<String, dynamic> json) => Field(
        formData: json["formData"],
        categoryId: json["category_id"],
      );

  Map<String, dynamic> toJson() => {
        "formData": formData,
        "category_id": categoryId,
      };
}

class FormDatum {
  FormDatum({
    this.label,
    this.answer,
    this.fieldtype,
  });

  String? label;
  dynamic answer;
  Fieldtype? fieldtype;

  FormDatum copyWith({
    String? label,
    dynamic answer,
    Fieldtype? fieldtype,
  }) =>
      FormDatum(
        label: label ?? this.label,
        answer: answer ?? this.answer,
        fieldtype: fieldtype ?? this.fieldtype,
      );

  factory FormDatum.fromRawJson(String str) =>
      FormDatum.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory FormDatum.fromJson(Map<String, dynamic> json) => FormDatum(
        label: json["label"],
        answer: json["answer"],
        fieldtype: fieldtypeValues.map[json["fieldtype"]]!,
      );

  Map<String, dynamic> toJson() => {
        "label": label,
        "answer": answer,
        "fieldtype": fieldtypeValues.reverse[fieldtype],
      };
}

class AnswerClass {
  AnswerClass({
    this.schoolCollegeUniversity,
    this.qualification,
    this.name,
    this.age,
    this.highestLevelOfEducation,
    this.occupation,
    this.training,
    this.institutionProvider,
    this.sourceOfIncome,
    this.monthlyIncome,
    this.monthlyExpenses,
    this.loanType,
    this.amount,
    this.provider,
    this.dateAcquiredPaymentPeriod,
    this.purpose,
    this.bankAccountTypeEGSavingsCurrentFixedLoan,
    this.averageAnnualAmountBanked,
    this.bankerSName,
    this.locationOfTheBank,
  });

  AnimalType? schoolCollegeUniversity;
  AnimalType? qualification;
  AnimalType? name;
  AnimalType? age;
  AnimalType? highestLevelOfEducation;
  AnimalType? occupation;
  AnimalType? training;
  AnimalType? institutionProvider;
  AnimalType? sourceOfIncome;
  AnimalType? monthlyIncome;
  AnimalType? monthlyExpenses;
  Map<String, String?>? loanType;
  Map<String, String?>? amount;
  Map<String, String?>? provider;
  Map<String, String?>? dateAcquiredPaymentPeriod;
  Map<String, String?>? purpose;
  AnimalType? bankAccountTypeEGSavingsCurrentFixedLoan;
  AnimalType? averageAnnualAmountBanked;
  AnimalType? bankerSName;
  AnimalType? locationOfTheBank;

  AnswerClass copyWith({
    AnimalType? schoolCollegeUniversity,
    AnimalType? qualification,
    AnimalType? name,
    AnimalType? age,
    AnimalType? highestLevelOfEducation,
    AnimalType? occupation,
    AnimalType? training,
    AnimalType? institutionProvider,
    AnimalType? sourceOfIncome,
    AnimalType? monthlyIncome,
    AnimalType? monthlyExpenses,
    Map<String, String?>? loanType,
    Map<String, String?>? amount,
    Map<String, String?>? provider,
    Map<String, String?>? dateAcquiredPaymentPeriod,
    Map<String, String?>? purpose,
    AnimalType? bankAccountTypeEGSavingsCurrentFixedLoan,
    AnimalType? averageAnnualAmountBanked,
    AnimalType? bankerSName,
    AnimalType? locationOfTheBank,
  }) =>
      AnswerClass(
        schoolCollegeUniversity:
            schoolCollegeUniversity ?? this.schoolCollegeUniversity,
        qualification: qualification ?? this.qualification,
        name: name ?? this.name,
        age: age ?? this.age,
        highestLevelOfEducation:
            highestLevelOfEducation ?? this.highestLevelOfEducation,
        occupation: occupation ?? this.occupation,
        training: training ?? this.training,
        institutionProvider: institutionProvider ?? this.institutionProvider,
        sourceOfIncome: sourceOfIncome ?? this.sourceOfIncome,
        monthlyIncome: monthlyIncome ?? this.monthlyIncome,
        monthlyExpenses: monthlyExpenses ?? this.monthlyExpenses,
        loanType: loanType ?? this.loanType,
        amount: amount ?? this.amount,
        provider: provider ?? this.provider,
        dateAcquiredPaymentPeriod:
            dateAcquiredPaymentPeriod ?? this.dateAcquiredPaymentPeriod,
        purpose: purpose ?? this.purpose,
        bankAccountTypeEGSavingsCurrentFixedLoan:
            bankAccountTypeEGSavingsCurrentFixedLoan ??
                this.bankAccountTypeEGSavingsCurrentFixedLoan,
        averageAnnualAmountBanked:
            averageAnnualAmountBanked ?? this.averageAnnualAmountBanked,
        bankerSName: bankerSName ?? this.bankerSName,
        locationOfTheBank: locationOfTheBank ?? this.locationOfTheBank,
      );

  factory AnswerClass.fromRawJson(String str) =>
      AnswerClass.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory AnswerClass.fromJson(Map<String, dynamic> json) => AnswerClass(
        schoolCollegeUniversity: json["School/College/University"] == null
            ? null
            : AnimalType.fromJson(json["School/College/University"]),
        qualification: json["Qualification"] == null
            ? null
            : AnimalType.fromJson(json["Qualification"]),
        name: json["Name"] == null ? null : AnimalType.fromJson(json["Name"]),
        age: json["Age"] == null ? null : AnimalType.fromJson(json["Age"]),
        highestLevelOfEducation: json["Highest level of education"] == null
            ? null
            : AnimalType.fromJson(json["Highest level of education"]),
        occupation: json["Occupation"] == null
            ? null
            : AnimalType.fromJson(json["Occupation"]),
        training: json["Training"] == null
            ? null
            : AnimalType.fromJson(json["Training"]),
        institutionProvider: json["Institution/Provider"] == null
            ? null
            : AnimalType.fromJson(json["Institution/Provider"]),
        sourceOfIncome: json["Source of Income"] == null
            ? null
            : AnimalType.fromJson(json["Source of Income"]),
        monthlyIncome: json["Monthly Income"] == null
            ? null
            : AnimalType.fromJson(json["Monthly Income"]),
        monthlyExpenses: json["Monthly Expenses"] == null
            ? null
            : AnimalType.fromJson(json["Monthly Expenses"]),
        loanType: Map.from(json["Loan Type"]!)
            .map((k, v) => MapEntry<String, String?>(k, v)),
        amount: Map.from(json["Amount"]!)
            .map((k, v) => MapEntry<String, String?>(k, v)),
        provider: Map.from(json["Provider"]!)
            .map((k, v) => MapEntry<String, String?>(k, v)),
        dateAcquiredPaymentPeriod:
            Map.from(json["Date acquired &Payment period"]!)
                .map((k, v) => MapEntry<String, String?>(k, v)),
        purpose: Map.from(json["Purpose"]!)
            .map((k, v) => MapEntry<String, String?>(k, v)),
        bankAccountTypeEGSavingsCurrentFixedLoan: json[
                    "Bank Account type e.g., savings, current, fixed, loan"] ==
                null
            ? null
            : AnimalType.fromJson(
                json["Bank Account type e.g., savings, current, fixed, loan"]),
        averageAnnualAmountBanked: json["Average annual amount banked"] == null
            ? null
            : AnimalType.fromJson(json["Average annual amount banked"]),
        bankerSName: json["Banker’s name"] == null
            ? null
            : AnimalType.fromJson(json["Banker’s name"]),
        locationOfTheBank: json["Location of the bank"] == null
            ? null
            : AnimalType.fromJson(json["Location of the bank"]),
      );

  Map<String, dynamic> toJson() => {
        "School/College/University": schoolCollegeUniversity?.toJson(),
        "Qualification": qualification?.toJson(),
        "Name": name?.toJson(),
        "Age": age?.toJson(),
        "Highest level of education": highestLevelOfEducation?.toJson(),
        "Occupation": occupation?.toJson(),
        "Training": training?.toJson(),
        "Institution/Provider": institutionProvider?.toJson(),
        "Source of Income": sourceOfIncome?.toJson(),
        "Monthly Income": monthlyIncome?.toJson(),
        "Monthly Expenses": monthlyExpenses?.toJson(),
        "Loan Type":
            Map.from(loanType!).map((k, v) => MapEntry<String, dynamic>(k, v)),
        "Amount":
            Map.from(amount!).map((k, v) => MapEntry<String, dynamic>(k, v)),
        "Provider":
            Map.from(provider!).map((k, v) => MapEntry<String, dynamic>(k, v)),
        "Date acquired &Payment period": Map.from(dateAcquiredPaymentPeriod!)
            .map((k, v) => MapEntry<String, dynamic>(k, v)),
        "Purpose":
            Map.from(purpose!).map((k, v) => MapEntry<String, dynamic>(k, v)),
        "Bank Account type e.g., savings, current, fixed, loan":
            bankAccountTypeEGSavingsCurrentFixedLoan?.toJson(),
        "Average annual amount banked": averageAnnualAmountBanked?.toJson(),
        "Banker’s name": bankerSName?.toJson(),
        "Location of the bank": locationOfTheBank?.toJson(),
      };
}

class AnimalType {
  AnimalType({
    this.the1,
  });

  String? the1;

  AnimalType copyWith({
    String? the1,
  }) =>
      AnimalType(
        the1: the1 ?? this.the1,
      );

  factory AnimalType.fromRawJson(String str) =>
      AnimalType.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory AnimalType.fromJson(Map<String, dynamic> json) => AnimalType(
        the1: json["1"],
      );

  Map<String, dynamic> toJson() => {
        "1": the1,
      };
}

enum Fieldtype {
  LIST_DYNAMIC,
  NULL,
  STRING,
  INTERNAL_LINKED_HASH_MAP_STRING_DYNAMIC
}

final fieldtypeValues = EnumValues({
  "_InternalLinkedHashMap<String, dynamic>":
      Fieldtype.INTERNAL_LINKED_HASH_MAP_STRING_DYNAMIC,
  "List<dynamic>": Fieldtype.LIST_DYNAMIC,
  "Null": Fieldtype.NULL,
  "String": Fieldtype.STRING
});

class FormDatumElement {
  FormDatumElement({
    this.formData,
    this.categoryId,
  });

  dynamic formData;
  int? categoryId;

  FormDatumElement copyWith({
    dynamic formData,
    int? categoryId,
  }) =>
      FormDatumElement(
        formData: formData ?? this.formData,
        categoryId: categoryId ?? this.categoryId,
      );

  factory FormDatumElement.fromRawJson(String str) =>
      FormDatumElement.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory FormDatumElement.fromJson(Map<String, dynamic> json) =>
      FormDatumElement(
        formData: json["formData"],
        categoryId: json["category_id"],
      );

  Map<String, dynamic> toJson() => {
        "formData": formData,
        "category_id": categoryId,
      };
}

enum IdType { NATIONAL_ID, PASSPORT_NUMBER }

final idTypeValues = EnumValues({
  "National ID": IdType.NATIONAL_ID,
  "Passport Number": IdType.PASSPORT_NUMBER
});

enum Nationality { UGANDA, ALGERIA, ANGOLA }

final nationalityValues = EnumValues({
  "Algeria": Nationality.ALGERIA,
  "Angola": Nationality.ANGOLA,
  "Uganda": Nationality.UGANDA
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
