import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';

class EmployeeProfileRecord extends FirestoreRecord {
  EmployeeProfileRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  bool hasEmail() => _email != null;

  // "display_name" field.
  String? _displayName;
  String get displayName => _displayName ?? '';
  bool hasDisplayName() => _displayName != null;

  // "uid" field.
  String? _uid;
  String get uid => _uid ?? '';
  bool hasUid() => _uid != null;

  // "created_time" field.
  DateTime? _createdTime;
  DateTime? get createdTime => _createdTime;
  bool hasCreatedTime() => _createdTime != null;

  // "phone_number" field.
  String? _phoneNumber;
  String get phoneNumber => _phoneNumber ?? '';
  bool hasPhoneNumber() => _phoneNumber != null;

  // "edited_time" field.
  DateTime? _editedTime;
  DateTime? get editedTime => _editedTime;
  bool hasEditedTime() => _editedTime != null;

  // "bio" field.
  String? _bio;
  String get bio => _bio ?? '';
  bool hasBio() => _bio != null;

  // "user_name" field.
  String? _userName;
  String get userName => _userName ?? '';
  bool hasUserName() => _userName != null;

  // "contact_email" field.
  String? _contactEmail;
  String get contactEmail => _contactEmail ?? '';
  bool hasContactEmail() => _contactEmail != null;

  // "primary_email" field.
  String? _primaryEmail;
  String get primaryEmail => _primaryEmail ?? '';
  bool hasPrimaryEmail() => _primaryEmail != null;

  // "primary_address" field.
  String? _primaryAddress;
  String get primaryAddress => _primaryAddress ?? '';
  bool hasPrimaryAddress() => _primaryAddress != null;

  // "contact_address" field.
  String? _contactAddress;
  String get contactAddress => _contactAddress ?? '';
  bool hasContactAddress() => _contactAddress != null;

  // "primary_phone" field.
  String? _primaryPhone;
  String get primaryPhone => _primaryPhone ?? '';
  bool hasPrimaryPhone() => _primaryPhone != null;

  // "contact_phone" field.
  String? _contactPhone;
  String get contactPhone => _contactPhone ?? '';
  bool hasContactPhone() => _contactPhone != null;

  // "user_ref" field.
  DocumentReference? _userRef;
  DocumentReference? get userRef => _userRef;
  bool hasUserRef() => _userRef != null;

  // "applicant_type" field.
  String? _applicantType;
  String get applicantType => _applicantType ?? '';
  bool hasApplicantType() => _applicantType != null;

  // "profile_post" field.
  String? _profilePost;
  String get profilePost => _profilePost ?? '';
  bool hasProfilePost() => _profilePost != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _email = snapshotData['email'] as String?;
    _displayName = snapshotData['display_name'] as String?;
    _uid = snapshotData['uid'] as String?;
    _createdTime = snapshotData['created_time'] as DateTime?;
    _phoneNumber = snapshotData['phone_number'] as String?;
    _editedTime = snapshotData['edited_time'] as DateTime?;
    _bio = snapshotData['bio'] as String?;
    _userName = snapshotData['user_name'] as String?;
    _contactEmail = snapshotData['contact_email'] as String?;
    _primaryEmail = snapshotData['primary_email'] as String?;
    _primaryAddress = snapshotData['primary_address'] as String?;
    _contactAddress = snapshotData['contact_address'] as String?;
    _primaryPhone = snapshotData['primary_phone'] as String?;
    _contactPhone = snapshotData['contact_phone'] as String?;
    _userRef = snapshotData['user_ref'] as DocumentReference?;
    _applicantType = snapshotData['applicant_type'] as String?;
    _profilePost = snapshotData['profile_post'] as String?;
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('EmployeeProfile')
          : FirebaseFirestore.instance.collectionGroup('EmployeeProfile');

  static DocumentReference createDoc(DocumentReference parent, {String? id}) =>
      parent.collection('EmployeeProfile').doc(id);

  static Stream<EmployeeProfileRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => EmployeeProfileRecord.fromSnapshot(s));

  static Future<EmployeeProfileRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => EmployeeProfileRecord.fromSnapshot(s));

  static EmployeeProfileRecord fromSnapshot(DocumentSnapshot snapshot) =>
      EmployeeProfileRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static EmployeeProfileRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      EmployeeProfileRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'EmployeeProfileRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is EmployeeProfileRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createEmployeeProfileRecordData({
  String? email,
  String? displayName,
  String? uid,
  DateTime? createdTime,
  String? phoneNumber,
  DateTime? editedTime,
  String? bio,
  String? userName,
  String? contactEmail,
  String? primaryEmail,
  String? primaryAddress,
  String? contactAddress,
  String? primaryPhone,
  String? contactPhone,
  DocumentReference? userRef,
  String? applicantType,
  String? profilePost,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'email': email,
      'display_name': displayName,
      'uid': uid,
      'created_time': createdTime,
      'phone_number': phoneNumber,
      'edited_time': editedTime,
      'bio': bio,
      'user_name': userName,
      'contact_email': contactEmail,
      'primary_email': primaryEmail,
      'primary_address': primaryAddress,
      'contact_address': contactAddress,
      'primary_phone': primaryPhone,
      'contact_phone': contactPhone,
      'user_ref': userRef,
      'applicant_type': applicantType,
      'profile_post': profilePost,
    }.withoutNulls,
  );

  return firestoreData;
}

class EmployeeProfileRecordDocumentEquality
    implements Equality<EmployeeProfileRecord> {
  const EmployeeProfileRecordDocumentEquality();

  @override
  bool equals(EmployeeProfileRecord? e1, EmployeeProfileRecord? e2) {
    return e1?.email == e2?.email &&
        e1?.displayName == e2?.displayName &&
        e1?.uid == e2?.uid &&
        e1?.createdTime == e2?.createdTime &&
        e1?.phoneNumber == e2?.phoneNumber &&
        e1?.editedTime == e2?.editedTime &&
        e1?.bio == e2?.bio &&
        e1?.userName == e2?.userName &&
        e1?.contactEmail == e2?.contactEmail &&
        e1?.primaryEmail == e2?.primaryEmail &&
        e1?.primaryAddress == e2?.primaryAddress &&
        e1?.contactAddress == e2?.contactAddress &&
        e1?.primaryPhone == e2?.primaryPhone &&
        e1?.contactPhone == e2?.contactPhone &&
        e1?.userRef == e2?.userRef &&
        e1?.applicantType == e2?.applicantType &&
        e1?.profilePost == e2?.profilePost;
  }

  @override
  int hash(EmployeeProfileRecord? e) => const ListEquality().hash([
        e?.email,
        e?.displayName,
        e?.uid,
        e?.createdTime,
        e?.phoneNumber,
        e?.editedTime,
        e?.bio,
        e?.userName,
        e?.contactEmail,
        e?.primaryEmail,
        e?.primaryAddress,
        e?.contactAddress,
        e?.primaryPhone,
        e?.contactPhone,
        e?.userRef,
        e?.applicantType,
        e?.profilePost
      ]);

  @override
  bool isValidKey(Object? o) => o is EmployeeProfileRecord;
}
