import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';

class ReviewRecord extends FirestoreRecord {
  ReviewRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "r_id" field.
  String? _rId;
  String get rId => _rId ?? '';
  bool hasRId() => _rId != null;

  // "r_comment" field.
  String? _rComment;
  String get rComment => _rComment ?? '';
  bool hasRComment() => _rComment != null;

  // "job_ref" field.
  DocumentReference? _jobRef;
  DocumentReference? get jobRef => _jobRef;
  bool hasJobRef() => _jobRef != null;

  // "comapny_ref" field.
  DocumentReference? _comapnyRef;
  DocumentReference? get comapnyRef => _comapnyRef;
  bool hasComapnyRef() => _comapnyRef != null;

  // "user_ref" field.
  DocumentReference? _userRef;
  DocumentReference? get userRef => _userRef;
  bool hasUserRef() => _userRef != null;

  // "like" field.
  List<DocumentReference>? _like;
  List<DocumentReference> get like => _like ?? const [];
  bool hasLike() => _like != null;

  // "photo_url" field.
  String? _photoUrl;
  String get photoUrl => _photoUrl ?? '';
  bool hasPhotoUrl() => _photoUrl != null;

  // "r_name" field.
  String? _rName;
  String get rName => _rName ?? '';
  bool hasRName() => _rName != null;

  void _initializeFields() {
    _rId = snapshotData['r_id'] as String?;
    _rComment = snapshotData['r_comment'] as String?;
    _jobRef = snapshotData['job_ref'] as DocumentReference?;
    _comapnyRef = snapshotData['comapny_ref'] as DocumentReference?;
    _userRef = snapshotData['user_ref'] as DocumentReference?;
    _like = getDataList(snapshotData['like']);
    _photoUrl = snapshotData['photo_url'] as String?;
    _rName = snapshotData['r_name'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('review');

  static Stream<ReviewRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ReviewRecord.fromSnapshot(s));

  static Future<ReviewRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ReviewRecord.fromSnapshot(s));

  static ReviewRecord fromSnapshot(DocumentSnapshot snapshot) => ReviewRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ReviewRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ReviewRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ReviewRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ReviewRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createReviewRecordData({
  String? rId,
  String? rComment,
  DocumentReference? jobRef,
  DocumentReference? comapnyRef,
  DocumentReference? userRef,
  String? photoUrl,
  String? rName,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'r_id': rId,
      'r_comment': rComment,
      'job_ref': jobRef,
      'comapny_ref': comapnyRef,
      'user_ref': userRef,
      'photo_url': photoUrl,
      'r_name': rName,
    }.withoutNulls,
  );

  return firestoreData;
}

class ReviewRecordDocumentEquality implements Equality<ReviewRecord> {
  const ReviewRecordDocumentEquality();

  @override
  bool equals(ReviewRecord? e1, ReviewRecord? e2) {
    const listEquality = ListEquality();
    return e1?.rId == e2?.rId &&
        e1?.rComment == e2?.rComment &&
        e1?.jobRef == e2?.jobRef &&
        e1?.comapnyRef == e2?.comapnyRef &&
        e1?.userRef == e2?.userRef &&
        listEquality.equals(e1?.like, e2?.like) &&
        e1?.photoUrl == e2?.photoUrl &&
        e1?.rName == e2?.rName;
  }

  @override
  int hash(ReviewRecord? e) => const ListEquality().hash([
        e?.rId,
        e?.rComment,
        e?.jobRef,
        e?.comapnyRef,
        e?.userRef,
        e?.like,
        e?.photoUrl,
        e?.rName
      ]);

  @override
  bool isValidKey(Object? o) => o is ReviewRecord;
}
