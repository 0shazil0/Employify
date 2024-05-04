// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class EducationVerficationStruct extends FFFirebaseStruct {
  EducationVerficationStruct({
    String? idCard,
    String? passingCertficate,
    DocumentReference? userRef,
    DocumentReference? profileRef,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _idCard = idCard,
        _passingCertficate = passingCertficate,
        _userRef = userRef,
        _profileRef = profileRef,
        super(firestoreUtilData);

  // "id_card" field.
  String? _idCard;
  String get idCard => _idCard ?? '';
  set idCard(String? val) => _idCard = val;
  bool hasIdCard() => _idCard != null;

  // "passing_certficate" field.
  String? _passingCertficate;
  String get passingCertficate => _passingCertficate ?? '';
  set passingCertficate(String? val) => _passingCertficate = val;
  bool hasPassingCertficate() => _passingCertficate != null;

  // "user_ref" field.
  DocumentReference? _userRef;
  DocumentReference? get userRef => _userRef;
  set userRef(DocumentReference? val) => _userRef = val;
  bool hasUserRef() => _userRef != null;

  // "profile_ref" field.
  DocumentReference? _profileRef;
  DocumentReference? get profileRef => _profileRef;
  set profileRef(DocumentReference? val) => _profileRef = val;
  bool hasProfileRef() => _profileRef != null;

  static EducationVerficationStruct fromMap(Map<String, dynamic> data) =>
      EducationVerficationStruct(
        idCard: data['id_card'] as String?,
        passingCertficate: data['passing_certficate'] as String?,
        userRef: data['user_ref'] as DocumentReference?,
        profileRef: data['profile_ref'] as DocumentReference?,
      );

  static EducationVerficationStruct? maybeFromMap(dynamic data) => data is Map
      ? EducationVerficationStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'id_card': _idCard,
        'passing_certficate': _passingCertficate,
        'user_ref': _userRef,
        'profile_ref': _profileRef,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'id_card': serializeParam(
          _idCard,
          ParamType.String,
        ),
        'passing_certficate': serializeParam(
          _passingCertficate,
          ParamType.String,
        ),
        'user_ref': serializeParam(
          _userRef,
          ParamType.DocumentReference,
        ),
        'profile_ref': serializeParam(
          _profileRef,
          ParamType.DocumentReference,
        ),
      }.withoutNulls;

  static EducationVerficationStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      EducationVerficationStruct(
        idCard: deserializeParam(
          data['id_card'],
          ParamType.String,
          false,
        ),
        passingCertficate: deserializeParam(
          data['passing_certficate'],
          ParamType.String,
          false,
        ),
        userRef: deserializeParam(
          data['user_ref'],
          ParamType.DocumentReference,
          false,
          collectionNamePath: ['users'],
        ),
        profileRef: deserializeParam(
          data['profile_ref'],
          ParamType.DocumentReference,
          false,
          collectionNamePath: ['users', 'EmployeeProfile'],
        ),
      );

  @override
  String toString() => 'EducationVerficationStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is EducationVerficationStruct &&
        idCard == other.idCard &&
        passingCertficate == other.passingCertficate &&
        userRef == other.userRef &&
        profileRef == other.profileRef;
  }

  @override
  int get hashCode => const ListEquality()
      .hash([idCard, passingCertficate, userRef, profileRef]);
}

EducationVerficationStruct createEducationVerficationStruct({
  String? idCard,
  String? passingCertficate,
  DocumentReference? userRef,
  DocumentReference? profileRef,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    EducationVerficationStruct(
      idCard: idCard,
      passingCertficate: passingCertficate,
      userRef: userRef,
      profileRef: profileRef,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

EducationVerficationStruct? updateEducationVerficationStruct(
  EducationVerficationStruct? educationVerfication, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    educationVerfication
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addEducationVerficationStructData(
  Map<String, dynamic> firestoreData,
  EducationVerficationStruct? educationVerfication,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (educationVerfication == null) {
    return;
  }
  if (educationVerfication.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && educationVerfication.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final educationVerficationData =
      getEducationVerficationFirestoreData(educationVerfication, forFieldValue);
  final nestedData =
      educationVerficationData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields =
      educationVerfication.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getEducationVerficationFirestoreData(
  EducationVerficationStruct? educationVerfication, [
  bool forFieldValue = false,
]) {
  if (educationVerfication == null) {
    return {};
  }
  final firestoreData = mapToFirestore(educationVerfication.toMap());

  // Add any Firestore field values
  educationVerfication.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getEducationVerficationListFirestoreData(
  List<EducationVerficationStruct>? educationVerfications,
) =>
    educationVerfications
        ?.map((e) => getEducationVerficationFirestoreData(e, true))
        .toList() ??
    [];
