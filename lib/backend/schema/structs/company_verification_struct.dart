// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CompanyVerificationStruct extends FFFirebaseStruct {
  CompanyVerificationStruct({
    String? cinNumber,
    String? mcaCertificate,
    DocumentReference? companyRef,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _cinNumber = cinNumber,
        _mcaCertificate = mcaCertificate,
        _companyRef = companyRef,
        super(firestoreUtilData);

  // "cin_number" field.
  String? _cinNumber;
  String get cinNumber => _cinNumber ?? '';
  set cinNumber(String? val) => _cinNumber = val;
  bool hasCinNumber() => _cinNumber != null;

  // "mca_certificate" field.
  String? _mcaCertificate;
  String get mcaCertificate => _mcaCertificate ?? '';
  set mcaCertificate(String? val) => _mcaCertificate = val;
  bool hasMcaCertificate() => _mcaCertificate != null;

  // "Company_ref" field.
  DocumentReference? _companyRef;
  DocumentReference? get companyRef => _companyRef;
  set companyRef(DocumentReference? val) => _companyRef = val;
  bool hasCompanyRef() => _companyRef != null;

  static CompanyVerificationStruct fromMap(Map<String, dynamic> data) =>
      CompanyVerificationStruct(
        cinNumber: data['cin_number'] as String?,
        mcaCertificate: data['mca_certificate'] as String?,
        companyRef: data['Company_ref'] as DocumentReference?,
      );

  static CompanyVerificationStruct? maybeFromMap(dynamic data) => data is Map
      ? CompanyVerificationStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'cin_number': _cinNumber,
        'mca_certificate': _mcaCertificate,
        'Company_ref': _companyRef,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'cin_number': serializeParam(
          _cinNumber,
          ParamType.String,
        ),
        'mca_certificate': serializeParam(
          _mcaCertificate,
          ParamType.String,
        ),
        'Company_ref': serializeParam(
          _companyRef,
          ParamType.DocumentReference,
        ),
      }.withoutNulls;

  static CompanyVerificationStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      CompanyVerificationStruct(
        cinNumber: deserializeParam(
          data['cin_number'],
          ParamType.String,
          false,
        ),
        mcaCertificate: deserializeParam(
          data['mca_certificate'],
          ParamType.String,
          false,
        ),
        companyRef: deserializeParam(
          data['Company_ref'],
          ParamType.DocumentReference,
          false,
          collectionNamePath: ['users'],
        ),
      );

  @override
  String toString() => 'CompanyVerificationStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is CompanyVerificationStruct &&
        cinNumber == other.cinNumber &&
        mcaCertificate == other.mcaCertificate &&
        companyRef == other.companyRef;
  }

  @override
  int get hashCode =>
      const ListEquality().hash([cinNumber, mcaCertificate, companyRef]);
}

CompanyVerificationStruct createCompanyVerificationStruct({
  String? cinNumber,
  String? mcaCertificate,
  DocumentReference? companyRef,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    CompanyVerificationStruct(
      cinNumber: cinNumber,
      mcaCertificate: mcaCertificate,
      companyRef: companyRef,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

CompanyVerificationStruct? updateCompanyVerificationStruct(
  CompanyVerificationStruct? companyVerification, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    companyVerification
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addCompanyVerificationStructData(
  Map<String, dynamic> firestoreData,
  CompanyVerificationStruct? companyVerification,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (companyVerification == null) {
    return;
  }
  if (companyVerification.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && companyVerification.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final companyVerificationData =
      getCompanyVerificationFirestoreData(companyVerification, forFieldValue);
  final nestedData =
      companyVerificationData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields =
      companyVerification.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getCompanyVerificationFirestoreData(
  CompanyVerificationStruct? companyVerification, [
  bool forFieldValue = false,
]) {
  if (companyVerification == null) {
    return {};
  }
  final firestoreData = mapToFirestore(companyVerification.toMap());

  // Add any Firestore field values
  companyVerification.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getCompanyVerificationListFirestoreData(
  List<CompanyVerificationStruct>? companyVerifications,
) =>
    companyVerifications
        ?.map((e) => getCompanyVerificationFirestoreData(e, true))
        .toList() ??
    [];
