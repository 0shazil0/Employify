import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';

class ExperienceRecord extends FirestoreRecord {
  ExperienceRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "e_id" field.
  String? _eId;
  String get eId => _eId ?? '';
  bool hasEId() => _eId != null;

  // "e_company_name" field.
  String? _eCompanyName;
  String get eCompanyName => _eCompanyName ?? '';
  bool hasECompanyName() => _eCompanyName != null;

  // "e_jobposition_name" field.
  String? _eJobpositionName;
  String get eJobpositionName => _eJobpositionName ?? '';
  bool hasEJobpositionName() => _eJobpositionName != null;

  // "endDate" field.
  DateTime? _endDate;
  DateTime? get endDate => _endDate;
  bool hasEndDate() => _endDate != null;

  // "startDate" field.
  DateTime? _startDate;
  DateTime? get startDate => _startDate;
  bool hasStartDate() => _startDate != null;

  // "is_verified" field.
  bool? _isVerified;
  bool get isVerified => _isVerified ?? false;
  bool hasIsVerified() => _isVerified != null;

  // "e_company_address" field.
  String? _eCompanyAddress;
  String get eCompanyAddress => _eCompanyAddress ?? '';
  bool hasECompanyAddress() => _eCompanyAddress != null;

  // "e_verfication" field.
  ExperienceVerificationStruct? _eVerfication;
  ExperienceVerificationStruct get eVerfication =>
      _eVerfication ?? ExperienceVerificationStruct();
  bool hasEVerfication() => _eVerfication != null;

  // "user_ref" field.
  DocumentReference? _userRef;
  DocumentReference? get userRef => _userRef;
  bool hasUserRef() => _userRef != null;

  // "profile_ref" field.
  DocumentReference? _profileRef;
  DocumentReference? get profileRef => _profileRef;
  bool hasProfileRef() => _profileRef != null;

  void _initializeFields() {
    _eId = snapshotData['e_id'] as String?;
    _eCompanyName = snapshotData['e_company_name'] as String?;
    _eJobpositionName = snapshotData['e_jobposition_name'] as String?;
    _endDate = snapshotData['endDate'] as DateTime?;
    _startDate = snapshotData['startDate'] as DateTime?;
    _isVerified = snapshotData['is_verified'] as bool?;
    _eCompanyAddress = snapshotData['e_company_address'] as String?;
    _eVerfication = ExperienceVerificationStruct.maybeFromMap(
        snapshotData['e_verfication']);
    _userRef = snapshotData['user_ref'] as DocumentReference?;
    _profileRef = snapshotData['profile_ref'] as DocumentReference?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('experience');

  static Stream<ExperienceRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ExperienceRecord.fromSnapshot(s));

  static Future<ExperienceRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ExperienceRecord.fromSnapshot(s));

  static ExperienceRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ExperienceRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ExperienceRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ExperienceRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ExperienceRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ExperienceRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createExperienceRecordData({
  String? eId,
  String? eCompanyName,
  String? eJobpositionName,
  DateTime? endDate,
  DateTime? startDate,
  bool? isVerified,
  String? eCompanyAddress,
  ExperienceVerificationStruct? eVerfication,
  DocumentReference? userRef,
  DocumentReference? profileRef,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'e_id': eId,
      'e_company_name': eCompanyName,
      'e_jobposition_name': eJobpositionName,
      'endDate': endDate,
      'startDate': startDate,
      'is_verified': isVerified,
      'e_company_address': eCompanyAddress,
      'e_verfication': ExperienceVerificationStruct().toMap(),
      'user_ref': userRef,
      'profile_ref': profileRef,
    }.withoutNulls,
  );

  // Handle nested data for "e_verfication" field.
  addExperienceVerificationStructData(
      firestoreData, eVerfication, 'e_verfication');

  return firestoreData;
}

class ExperienceRecordDocumentEquality implements Equality<ExperienceRecord> {
  const ExperienceRecordDocumentEquality();

  @override
  bool equals(ExperienceRecord? e1, ExperienceRecord? e2) {
    return e1?.eId == e2?.eId &&
        e1?.eCompanyName == e2?.eCompanyName &&
        e1?.eJobpositionName == e2?.eJobpositionName &&
        e1?.endDate == e2?.endDate &&
        e1?.startDate == e2?.startDate &&
        e1?.isVerified == e2?.isVerified &&
        e1?.eCompanyAddress == e2?.eCompanyAddress &&
        e1?.eVerfication == e2?.eVerfication &&
        e1?.userRef == e2?.userRef &&
        e1?.profileRef == e2?.profileRef;
  }

  @override
  int hash(ExperienceRecord? e) => const ListEquality().hash([
        e?.eId,
        e?.eCompanyName,
        e?.eJobpositionName,
        e?.endDate,
        e?.startDate,
        e?.isVerified,
        e?.eCompanyAddress,
        e?.eVerfication,
        e?.userRef,
        e?.profileRef
      ]);

  @override
  bool isValidKey(Object? o) => o is ExperienceRecord;
}
