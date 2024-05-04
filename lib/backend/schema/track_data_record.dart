import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';

class TrackDataRecord extends FirestoreRecord {
  TrackDataRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "is_under_review" field.
  bool? _isUnderReview;
  bool get isUnderReview => _isUnderReview ?? false;
  bool hasIsUnderReview() => _isUnderReview != null;

  // "is_accepted" field.
  bool? _isAccepted;
  bool get isAccepted => _isAccepted ?? false;
  bool hasIsAccepted() => _isAccepted != null;

  // "is_rejected" field.
  bool? _isRejected;
  bool get isRejected => _isRejected ?? false;
  bool hasIsRejected() => _isRejected != null;

  // "ref" field.
  DocumentReference? _ref;
  DocumentReference? get ref => _ref;
  bool hasRef() => _ref != null;

  // "time" field.
  DateTime? _time;
  DateTime? get time => _time;
  bool hasTime() => _time != null;

  // "user_ref" field.
  DocumentReference? _userRef;
  DocumentReference? get userRef => _userRef;
  bool hasUserRef() => _userRef != null;

  // "updateMessage" field.
  String? _updateMessage;
  String get updateMessage => _updateMessage ?? '';
  bool hasUpdateMessage() => _updateMessage != null;

  void _initializeFields() {
    _isUnderReview = snapshotData['is_under_review'] as bool?;
    _isAccepted = snapshotData['is_accepted'] as bool?;
    _isRejected = snapshotData['is_rejected'] as bool?;
    _ref = snapshotData['ref'] as DocumentReference?;
    _time = snapshotData['time'] as DateTime?;
    _userRef = snapshotData['user_ref'] as DocumentReference?;
    _updateMessage = snapshotData['updateMessage'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('track_data');

  static Stream<TrackDataRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => TrackDataRecord.fromSnapshot(s));

  static Future<TrackDataRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => TrackDataRecord.fromSnapshot(s));

  static TrackDataRecord fromSnapshot(DocumentSnapshot snapshot) =>
      TrackDataRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static TrackDataRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      TrackDataRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'TrackDataRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is TrackDataRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createTrackDataRecordData({
  bool? isUnderReview,
  bool? isAccepted,
  bool? isRejected,
  DocumentReference? ref,
  DateTime? time,
  DocumentReference? userRef,
  String? updateMessage,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'is_under_review': isUnderReview,
      'is_accepted': isAccepted,
      'is_rejected': isRejected,
      'ref': ref,
      'time': time,
      'user_ref': userRef,
      'updateMessage': updateMessage,
    }.withoutNulls,
  );

  return firestoreData;
}

class TrackDataRecordDocumentEquality implements Equality<TrackDataRecord> {
  const TrackDataRecordDocumentEquality();

  @override
  bool equals(TrackDataRecord? e1, TrackDataRecord? e2) {
    return e1?.isUnderReview == e2?.isUnderReview &&
        e1?.isAccepted == e2?.isAccepted &&
        e1?.isRejected == e2?.isRejected &&
        e1?.ref == e2?.ref &&
        e1?.time == e2?.time &&
        e1?.userRef == e2?.userRef &&
        e1?.updateMessage == e2?.updateMessage;
  }

  @override
  int hash(TrackDataRecord? e) => const ListEquality().hash([
        e?.isUnderReview,
        e?.isAccepted,
        e?.isRejected,
        e?.ref,
        e?.time,
        e?.userRef,
        e?.updateMessage
      ]);

  @override
  bool isValidKey(Object? o) => o is TrackDataRecord;
}
