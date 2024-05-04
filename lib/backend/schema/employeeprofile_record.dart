import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';

class EmployeeprofileRecord extends FirestoreRecord {
  EmployeeprofileRecord._(
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

  // "photo_url" field.
  String? _photoUrl;
  String get photoUrl => _photoUrl ?? '';
  bool hasPhotoUrl() => _photoUrl != null;

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

  // "contact_address" field.
  String? _contactAddress;
  String get contactAddress => _contactAddress ?? '';
  bool hasContactAddress() => _contactAddress != null;

  // "primary_address" field.
  String? _primaryAddress;
  String get primaryAddress => _primaryAddress ?? '';
  bool hasPrimaryAddress() => _primaryAddress != null;

  // "contact_phone" field.
  String? _contactPhone;
  String get contactPhone => _contactPhone ?? '';
  bool hasContactPhone() => _contactPhone != null;

  // "primary_phone" field.
  String? _primaryPhone;
  String get primaryPhone => _primaryPhone ?? '';
  bool hasPrimaryPhone() => _primaryPhone != null;

  // "applicant_type" field.
  String? _applicantType;
  String get applicantType => _applicantType ?? '';
  bool hasApplicantType() => _applicantType != null;

  // "profile_post" field.
  String? _profilePost;
  String get profilePost => _profilePost ?? '';
  bool hasProfilePost() => _profilePost != null;

  // "user_ref" field.
  DocumentReference? _userRef;
  DocumentReference? get userRef => _userRef;
  bool hasUserRef() => _userRef != null;

  // "employee_id" field.
  String? _employeeId;
  String get employeeId => _employeeId ?? '';
  bool hasEmployeeId() => _employeeId != null;

  // "resume" field.
  String? _resume;
  String get resume => _resume ?? '';
  bool hasResume() => _resume != null;

  // "profile_name" field.
  String? _profileName;
  String get profileName => _profileName ?? '';
  bool hasProfileName() => _profileName != null;

  void _initializeFields() {
    _email = snapshotData['email'] as String?;
    _displayName = snapshotData['display_name'] as String?;
    _photoUrl = snapshotData['photo_url'] as String?;
    _createdTime = snapshotData['created_time'] as DateTime?;
    _phoneNumber = snapshotData['phone_number'] as String?;
    _editedTime = snapshotData['edited_time'] as DateTime?;
    _bio = snapshotData['bio'] as String?;
    _userName = snapshotData['user_name'] as String?;
    _contactEmail = snapshotData['contact_email'] as String?;
    _primaryEmail = snapshotData['primary_email'] as String?;
    _contactAddress = snapshotData['contact_address'] as String?;
    _primaryAddress = snapshotData['primary_address'] as String?;
    _contactPhone = snapshotData['contact_phone'] as String?;
    _primaryPhone = snapshotData['primary_phone'] as String?;
    _applicantType = snapshotData['applicant_type'] as String?;
    _profilePost = snapshotData['profile_post'] as String?;
    _userRef = snapshotData['user_ref'] as DocumentReference?;
    _employeeId = snapshotData['employee_id'] as String?;
    _resume = snapshotData['resume'] as String?;
    _profileName = snapshotData['profile_name'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('employeeprofile');

  static Stream<EmployeeprofileRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => EmployeeprofileRecord.fromSnapshot(s));

  static Future<EmployeeprofileRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => EmployeeprofileRecord.fromSnapshot(s));

  static EmployeeprofileRecord fromSnapshot(DocumentSnapshot snapshot) =>
      EmployeeprofileRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static EmployeeprofileRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      EmployeeprofileRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'EmployeeprofileRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is EmployeeprofileRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createEmployeeprofileRecordData({
  String? email,
  String? displayName,
  String? photoUrl,
  DateTime? createdTime,
  String? phoneNumber,
  DateTime? editedTime,
  String? bio,
  String? userName,
  String? contactEmail,
  String? primaryEmail,
  String? contactAddress,
  String? primaryAddress,
  String? contactPhone,
  String? primaryPhone,
  String? applicantType,
  String? profilePost,
  DocumentReference? userRef,
  String? employeeId,
  String? resume,
  String? profileName,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'email': email,
      'display_name': displayName,
      'photo_url': photoUrl,
      'created_time': createdTime,
      'phone_number': phoneNumber,
      'edited_time': editedTime,
      'bio': bio,
      'user_name': userName,
      'contact_email': contactEmail,
      'primary_email': primaryEmail,
      'contact_address': contactAddress,
      'primary_address': primaryAddress,
      'contact_phone': contactPhone,
      'primary_phone': primaryPhone,
      'applicant_type': applicantType,
      'profile_post': profilePost,
      'user_ref': userRef,
      'employee_id': employeeId,
      'resume': resume,
      'profile_name': profileName,
    }.withoutNulls,
  );

  return firestoreData;
}

class EmployeeprofileRecordDocumentEquality
    implements Equality<EmployeeprofileRecord> {
  const EmployeeprofileRecordDocumentEquality();

  @override
  bool equals(EmployeeprofileRecord? e1, EmployeeprofileRecord? e2) {
    return e1?.email == e2?.email &&
        e1?.displayName == e2?.displayName &&
        e1?.photoUrl == e2?.photoUrl &&
        e1?.createdTime == e2?.createdTime &&
        e1?.phoneNumber == e2?.phoneNumber &&
        e1?.editedTime == e2?.editedTime &&
        e1?.bio == e2?.bio &&
        e1?.userName == e2?.userName &&
        e1?.contactEmail == e2?.contactEmail &&
        e1?.primaryEmail == e2?.primaryEmail &&
        e1?.contactAddress == e2?.contactAddress &&
        e1?.primaryAddress == e2?.primaryAddress &&
        e1?.contactPhone == e2?.contactPhone &&
        e1?.primaryPhone == e2?.primaryPhone &&
        e1?.applicantType == e2?.applicantType &&
        e1?.profilePost == e2?.profilePost &&
        e1?.userRef == e2?.userRef &&
        e1?.employeeId == e2?.employeeId &&
        e1?.resume == e2?.resume &&
        e1?.profileName == e2?.profileName;
  }

  @override
  int hash(EmployeeprofileRecord? e) => const ListEquality().hash([
        e?.email,
        e?.displayName,
        e?.photoUrl,
        e?.createdTime,
        e?.phoneNumber,
        e?.editedTime,
        e?.bio,
        e?.userName,
        e?.contactEmail,
        e?.primaryEmail,
        e?.contactAddress,
        e?.primaryAddress,
        e?.contactPhone,
        e?.primaryPhone,
        e?.applicantType,
        e?.profilePost,
        e?.userRef,
        e?.employeeId,
        e?.resume,
        e?.profileName
      ]);

  @override
  bool isValidKey(Object? o) => o is EmployeeprofileRecord;
}
