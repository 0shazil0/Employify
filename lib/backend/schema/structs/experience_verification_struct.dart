// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ExperienceVerificationStruct extends FFFirebaseStruct {
  ExperienceVerificationStruct({
    String? experienceCertificate,
    String? salarySlip,
    DocumentReference? userRef,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _experienceCertificate = experienceCertificate,
        _salarySlip = salarySlip,
        _userRef = userRef,
        super(firestoreUtilData);

  // "experience_certificate" field.
  String? _experienceCertificate;
  String get experienceCertificate => _experienceCertificate ?? '';
  set experienceCertificate(String? val) => _experienceCertificate = val;
  bool hasExperienceCertificate() => _experienceCertificate != null;

  // "salary_slip" field.
  String? _salarySlip;
  String get salarySlip => _salarySlip ?? '';
  set salarySlip(String? val) => _salarySlip = val;
  bool hasSalarySlip() => _salarySlip != null;

  // "user_ref" field.
  DocumentReference? _userRef;
  DocumentReference? get userRef => _userRef;
  set userRef(DocumentReference? val) => _userRef = val;
  bool hasUserRef() => _userRef != null;

  static ExperienceVerificationStruct fromMap(Map<String, dynamic> data) =>
      ExperienceVerificationStruct(
        experienceCertificate: data['experience_certificate'] as String?,
        salarySlip: data['salary_slip'] as String?,
        userRef: data['user_ref'] as DocumentReference?,
      );

  static ExperienceVerificationStruct? maybeFromMap(dynamic data) => data is Map
      ? ExperienceVerificationStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'experience_certificate': _experienceCertificate,
        'salary_slip': _salarySlip,
        'user_ref': _userRef,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'experience_certificate': serializeParam(
          _experienceCertificate,
          ParamType.String,
        ),
        'salary_slip': serializeParam(
          _salarySlip,
          ParamType.String,
        ),
        'user_ref': serializeParam(
          _userRef,
          ParamType.DocumentReference,
        ),
      }.withoutNulls;

  static ExperienceVerificationStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      ExperienceVerificationStruct(
        experienceCertificate: deserializeParam(
          data['experience_certificate'],
          ParamType.String,
          false,
        ),
        salarySlip: deserializeParam(
          data['salary_slip'],
          ParamType.String,
          false,
        ),
        userRef: deserializeParam(
          data['user_ref'],
          ParamType.DocumentReference,
          false,
          collectionNamePath: ['users'],
        ),
      );

  @override
  String toString() => 'ExperienceVerificationStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is ExperienceVerificationStruct &&
        experienceCertificate == other.experienceCertificate &&
        salarySlip == other.salarySlip &&
        userRef == other.userRef;
  }

  @override
  int get hashCode =>
      const ListEquality().hash([experienceCertificate, salarySlip, userRef]);
}

ExperienceVerificationStruct createExperienceVerificationStruct({
  String? experienceCertificate,
  String? salarySlip,
  DocumentReference? userRef,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    ExperienceVerificationStruct(
      experienceCertificate: experienceCertificate,
      salarySlip: salarySlip,
      userRef: userRef,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

ExperienceVerificationStruct? updateExperienceVerificationStruct(
  ExperienceVerificationStruct? experienceVerification, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    experienceVerification
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addExperienceVerificationStructData(
  Map<String, dynamic> firestoreData,
  ExperienceVerificationStruct? experienceVerification,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (experienceVerification == null) {
    return;
  }
  if (experienceVerification.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields = !forFieldValue &&
      experienceVerification.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final experienceVerificationData = getExperienceVerificationFirestoreData(
      experienceVerification, forFieldValue);
  final nestedData =
      experienceVerificationData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields =
      experienceVerification.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getExperienceVerificationFirestoreData(
  ExperienceVerificationStruct? experienceVerification, [
  bool forFieldValue = false,
]) {
  if (experienceVerification == null) {
    return {};
  }
  final firestoreData = mapToFirestore(experienceVerification.toMap());

  // Add any Firestore field values
  experienceVerification.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getExperienceVerificationListFirestoreData(
  List<ExperienceVerificationStruct>? experienceVerifications,
) =>
    experienceVerifications
        ?.map((e) => getExperienceVerificationFirestoreData(e, true))
        .toList() ??
    [];
