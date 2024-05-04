import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CompanyProfileRecord extends FirestoreRecord {
  CompanyProfileRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "c_id" field.
  String? _cId;
  String get cId => _cId ?? '';
  bool hasCId() => _cId != null;

  // "c_name" field.
  String? _cName;
  String get cName => _cName ?? '';
  bool hasCName() => _cName != null;

  // "c_primary_email" field.
  String? _cPrimaryEmail;
  String get cPrimaryEmail => _cPrimaryEmail ?? '';
  bool hasCPrimaryEmail() => _cPrimaryEmail != null;

  // "c_contact_email" field.
  String? _cContactEmail;
  String get cContactEmail => _cContactEmail ?? '';
  bool hasCContactEmail() => _cContactEmail != null;

  // "is_verified" field.
  bool? _isVerified;
  bool get isVerified => _isVerified ?? false;
  bool hasIsVerified() => _isVerified != null;

  // "logo_url" field.
  String? _logoUrl;
  String get logoUrl => _logoUrl ?? '';
  bool hasLogoUrl() => _logoUrl != null;

  // "c_address" field.
  String? _cAddress;
  String get cAddress => _cAddress ?? '';
  bool hasCAddress() => _cAddress != null;

  // "c_contact_address" field.
  String? _cContactAddress;
  String get cContactAddress => _cContactAddress ?? '';
  bool hasCContactAddress() => _cContactAddress != null;

  // "verfication" field.
  CompanyVerificationStruct? _verfication;
  CompanyVerificationStruct get verfication =>
      _verfication ?? CompanyVerificationStruct();
  bool hasVerfication() => _verfication != null;

  // "user_ref" field.
  DocumentReference? _userRef;
  DocumentReference? get userRef => _userRef;
  bool hasUserRef() => _userRef != null;

  // "job_open" field.
  int? _jobOpen;
  int get jobOpen => _jobOpen ?? 0;
  bool hasJobOpen() => _jobOpen != null;

  // "is_recommended" field.
  bool? _isRecommended;
  bool get isRecommended => _isRecommended ?? false;
  bool hasIsRecommended() => _isRecommended != null;

  // "view" field.
  int? _view;
  int get view => _view ?? 0;
  bool hasView() => _view != null;

  void _initializeFields() {
    _cId = snapshotData['c_id'] as String?;
    _cName = snapshotData['c_name'] as String?;
    _cPrimaryEmail = snapshotData['c_primary_email'] as String?;
    _cContactEmail = snapshotData['c_contact_email'] as String?;
    _isVerified = snapshotData['is_verified'] as bool?;
    _logoUrl = snapshotData['logo_url'] as String?;
    _cAddress = snapshotData['c_address'] as String?;
    _cContactAddress = snapshotData['c_contact_address'] as String?;
    _verfication =
        CompanyVerificationStruct.maybeFromMap(snapshotData['verfication']);
    _userRef = snapshotData['user_ref'] as DocumentReference?;
    _jobOpen = castToType<int>(snapshotData['job_open']);
    _isRecommended = snapshotData['is_recommended'] as bool?;
    _view = castToType<int>(snapshotData['view']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Company_Profile');

  static Stream<CompanyProfileRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => CompanyProfileRecord.fromSnapshot(s));

  static Future<CompanyProfileRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => CompanyProfileRecord.fromSnapshot(s));

  static CompanyProfileRecord fromSnapshot(DocumentSnapshot snapshot) =>
      CompanyProfileRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static CompanyProfileRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      CompanyProfileRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'CompanyProfileRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is CompanyProfileRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createCompanyProfileRecordData({
  String? cId,
  String? cName,
  String? cPrimaryEmail,
  String? cContactEmail,
  bool? isVerified,
  String? logoUrl,
  String? cAddress,
  String? cContactAddress,
  CompanyVerificationStruct? verfication,
  DocumentReference? userRef,
  int? jobOpen,
  bool? isRecommended,
  int? view,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'c_id': cId,
      'c_name': cName,
      'c_primary_email': cPrimaryEmail,
      'c_contact_email': cContactEmail,
      'is_verified': isVerified,
      'logo_url': logoUrl,
      'c_address': cAddress,
      'c_contact_address': cContactAddress,
      'verfication': CompanyVerificationStruct().toMap(),
      'user_ref': userRef,
      'job_open': jobOpen,
      'is_recommended': isRecommended,
      'view': view,
    }.withoutNulls,
  );

  // Handle nested data for "verfication" field.
  addCompanyVerificationStructData(firestoreData, verfication, 'verfication');

  return firestoreData;
}

class CompanyProfileRecordDocumentEquality
    implements Equality<CompanyProfileRecord> {
  const CompanyProfileRecordDocumentEquality();

  @override
  bool equals(CompanyProfileRecord? e1, CompanyProfileRecord? e2) {
    return e1?.cId == e2?.cId &&
        e1?.cName == e2?.cName &&
        e1?.cPrimaryEmail == e2?.cPrimaryEmail &&
        e1?.cContactEmail == e2?.cContactEmail &&
        e1?.isVerified == e2?.isVerified &&
        e1?.logoUrl == e2?.logoUrl &&
        e1?.cAddress == e2?.cAddress &&
        e1?.cContactAddress == e2?.cContactAddress &&
        e1?.verfication == e2?.verfication &&
        e1?.userRef == e2?.userRef &&
        e1?.jobOpen == e2?.jobOpen &&
        e1?.isRecommended == e2?.isRecommended &&
        e1?.view == e2?.view;
  }

  @override
  int hash(CompanyProfileRecord? e) => const ListEquality().hash([
        e?.cId,
        e?.cName,
        e?.cPrimaryEmail,
        e?.cContactEmail,
        e?.isVerified,
        e?.logoUrl,
        e?.cAddress,
        e?.cContactAddress,
        e?.verfication,
        e?.userRef,
        e?.jobOpen,
        e?.isRecommended,
        e?.view
      ]);

  @override
  bool isValidKey(Object? o) => o is CompanyProfileRecord;
}
