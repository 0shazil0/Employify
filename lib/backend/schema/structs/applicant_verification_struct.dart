// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ApplicantVerificationStruct extends FFFirebaseStruct {
  ApplicantVerificationStruct({
    String? cnic,
    DocumentReference? userRef,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _cnic = cnic,
        _userRef = userRef,
        super(firestoreUtilData);

  // "cnic" field.
  String? _cnic;
  String get cnic => _cnic ?? '';
  set cnic(String? val) => _cnic = val;
  bool hasCnic() => _cnic != null;

  // "user_ref" field.
  DocumentReference? _userRef;
  DocumentReference? get userRef => _userRef;
  set userRef(DocumentReference? val) => _userRef = val;
  bool hasUserRef() => _userRef != null;

  static ApplicantVerificationStruct fromMap(Map<String, dynamic> data) =>
      ApplicantVerificationStruct(
        cnic: data['cnic'] as String?,
        userRef: data['user_ref'] as DocumentReference?,
      );

  static ApplicantVerificationStruct? maybeFromMap(dynamic data) => data is Map
      ? ApplicantVerificationStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'cnic': _cnic,
        'user_ref': _userRef,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'cnic': serializeParam(
          _cnic,
          ParamType.String,
        ),
        'user_ref': serializeParam(
          _userRef,
          ParamType.DocumentReference,
        ),
      }.withoutNulls;

  static ApplicantVerificationStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      ApplicantVerificationStruct(
        cnic: deserializeParam(
          data['cnic'],
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
  String toString() => 'ApplicantVerificationStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is ApplicantVerificationStruct &&
        cnic == other.cnic &&
        userRef == other.userRef;
  }

  @override
  int get hashCode => const ListEquality().hash([cnic, userRef]);
}

ApplicantVerificationStruct createApplicantVerificationStruct({
  String? cnic,
  DocumentReference? userRef,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    ApplicantVerificationStruct(
      cnic: cnic,
      userRef: userRef,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

ApplicantVerificationStruct? updateApplicantVerificationStruct(
  ApplicantVerificationStruct? applicantVerification, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    applicantVerification
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addApplicantVerificationStructData(
  Map<String, dynamic> firestoreData,
  ApplicantVerificationStruct? applicantVerification,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (applicantVerification == null) {
    return;
  }
  if (applicantVerification.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields = !forFieldValue &&
      applicantVerification.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final applicantVerificationData = getApplicantVerificationFirestoreData(
      applicantVerification, forFieldValue);
  final nestedData =
      applicantVerificationData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields =
      applicantVerification.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getApplicantVerificationFirestoreData(
  ApplicantVerificationStruct? applicantVerification, [
  bool forFieldValue = false,
]) {
  if (applicantVerification == null) {
    return {};
  }
  final firestoreData = mapToFirestore(applicantVerification.toMap());

  // Add any Firestore field values
  applicantVerification.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getApplicantVerificationListFirestoreData(
  List<ApplicantVerificationStruct>? applicantVerifications,
) =>
    applicantVerifications
        ?.map((e) => getApplicantVerificationFirestoreData(e, true))
        .toList() ??
    [];
