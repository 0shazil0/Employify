import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';

class AppliedJobRecord extends FirestoreRecord {
  AppliedJobRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "j_id" field.
  String? _jId;
  String get jId => _jId ?? '';
  bool hasJId() => _jId != null;

  // "employee_profile_id" field.
  String? _employeeProfileId;
  String get employeeProfileId => _employeeProfileId ?? '';
  bool hasEmployeeProfileId() => _employeeProfileId != null;

  // "user_ref" field.
  DocumentReference? _userRef;
  DocumentReference? get userRef => _userRef;
  bool hasUserRef() => _userRef != null;

  // "track_job" field.
  TrackDatatypeStruct? _trackJob;
  TrackDatatypeStruct get trackJob => _trackJob ?? TrackDatatypeStruct();
  bool hasTrackJob() => _trackJob != null;

  // "status" field.
  String? _status;
  String get status => _status ?? '';
  bool hasStatus() => _status != null;

  void _initializeFields() {
    _jId = snapshotData['j_id'] as String?;
    _employeeProfileId = snapshotData['employee_profile_id'] as String?;
    _userRef = snapshotData['user_ref'] as DocumentReference?;
    _trackJob = TrackDatatypeStruct.maybeFromMap(snapshotData['track_job']);
    _status = snapshotData['status'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('applied_job');

  static Stream<AppliedJobRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => AppliedJobRecord.fromSnapshot(s));

  static Future<AppliedJobRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => AppliedJobRecord.fromSnapshot(s));

  static AppliedJobRecord fromSnapshot(DocumentSnapshot snapshot) =>
      AppliedJobRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static AppliedJobRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      AppliedJobRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'AppliedJobRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is AppliedJobRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createAppliedJobRecordData({
  String? jId,
  String? employeeProfileId,
  DocumentReference? userRef,
  TrackDatatypeStruct? trackJob,
  String? status,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'j_id': jId,
      'employee_profile_id': employeeProfileId,
      'user_ref': userRef,
      'track_job': TrackDatatypeStruct().toMap(),
      'status': status,
    }.withoutNulls,
  );

  // Handle nested data for "track_job" field.
  addTrackDatatypeStructData(firestoreData, trackJob, 'track_job');

  return firestoreData;
}

class AppliedJobRecordDocumentEquality implements Equality<AppliedJobRecord> {
  const AppliedJobRecordDocumentEquality();

  @override
  bool equals(AppliedJobRecord? e1, AppliedJobRecord? e2) {
    return e1?.jId == e2?.jId &&
        e1?.employeeProfileId == e2?.employeeProfileId &&
        e1?.userRef == e2?.userRef &&
        e1?.trackJob == e2?.trackJob &&
        e1?.status == e2?.status;
  }

  @override
  int hash(AppliedJobRecord? e) => const ListEquality()
      .hash([e?.jId, e?.employeeProfileId, e?.userRef, e?.trackJob, e?.status]);

  @override
  bool isValidKey(Object? o) => o is AppliedJobRecord;
}
