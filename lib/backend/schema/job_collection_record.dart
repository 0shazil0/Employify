import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class JobCollectionRecord extends FirestoreRecord {
  JobCollectionRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "j_id" field.
  String? _jId;
  String get jId => _jId ?? '';
  bool hasJId() => _jId != null;

  // "j_name" field.
  String? _jName;
  String get jName => _jName ?? '';
  bool hasJName() => _jName != null;

  // "j_salary" field.
  double? _jSalary;
  double get jSalary => _jSalary ?? 0.0;
  bool hasJSalary() => _jSalary != null;

  // "j_recruiter_id" field.
  String? _jRecruiterId;
  String get jRecruiterId => _jRecruiterId ?? '';
  bool hasJRecruiterId() => _jRecruiterId != null;

  // "company_name" field.
  String? _companyName;
  String get companyName => _companyName ?? '';
  bool hasCompanyName() => _companyName != null;

  // "company_id" field.
  String? _companyId;
  String get companyId => _companyId ?? '';
  bool hasCompanyId() => _companyId != null;

  // "description" field.
  String? _description;
  String get description => _description ?? '';
  bool hasDescription() => _description != null;

  // "industry" field.
  String? _industry;
  String get industry => _industry ?? '';
  bool hasIndustry() => _industry != null;

  // "location" field.
  String? _location;
  String get location => _location ?? '';
  bool hasLocation() => _location != null;

  // "benefits" field.
  String? _benefits;
  String get benefits => _benefits ?? '';
  bool hasBenefits() => _benefits != null;

  // "posting_date" field.
  DateTime? _postingDate;
  DateTime? get postingDate => _postingDate;
  bool hasPostingDate() => _postingDate != null;

  // "last_updated" field.
  DateTime? _lastUpdated;
  DateTime? get lastUpdated => _lastUpdated;
  bool hasLastUpdated() => _lastUpdated != null;

  // "j_view" field.
  int? _jView;
  int get jView => _jView ?? 0;
  bool hasJView() => _jView != null;

  // "j_requirement" field.
  String? _jRequirement;
  String get jRequirement => _jRequirement ?? '';
  bool hasJRequirement() => _jRequirement != null;

  // "j_address" field.
  String? _jAddress;
  String get jAddress => _jAddress ?? '';
  bool hasJAddress() => _jAddress != null;

  // "company_ref" field.
  DocumentReference? _companyRef;
  DocumentReference? get companyRef => _companyRef;
  bool hasCompanyRef() => _companyRef != null;

  // "user_ref" field.
  DocumentReference? _userRef;
  DocumentReference? get userRef => _userRef;
  bool hasUserRef() => _userRef != null;

  // "is_featured" field.
  bool? _isFeatured;
  bool get isFeatured => _isFeatured ?? false;
  bool hasIsFeatured() => _isFeatured != null;

  // "j_category" field.
  String? _jCategory;
  String get jCategory => _jCategory ?? '';
  bool hasJCategory() => _jCategory != null;

  // "j_type" field.
  String? _jType;
  String get jType => _jType ?? '';
  bool hasJType() => _jType != null;

  // "j_position" field.
  String? _jPosition;
  String get jPosition => _jPosition ?? '';
  bool hasJPosition() => _jPosition != null;

  // "applied_candidate" field.
  List<DocumentReference>? _appliedCandidate;
  List<DocumentReference> get appliedCandidate => _appliedCandidate ?? const [];
  bool hasAppliedCandidate() => _appliedCandidate != null;

  void _initializeFields() {
    _jId = snapshotData['j_id'] as String?;
    _jName = snapshotData['j_name'] as String?;
    _jSalary = castToType<double>(snapshotData['j_salary']);
    _jRecruiterId = snapshotData['j_recruiter_id'] as String?;
    _companyName = snapshotData['company_name'] as String?;
    _companyId = snapshotData['company_id'] as String?;
    _description = snapshotData['description'] as String?;
    _industry = snapshotData['industry'] as String?;
    _location = snapshotData['location'] as String?;
    _benefits = snapshotData['benefits'] as String?;
    _postingDate = snapshotData['posting_date'] as DateTime?;
    _lastUpdated = snapshotData['last_updated'] as DateTime?;
    _jView = castToType<int>(snapshotData['j_view']);
    _jRequirement = snapshotData['j_requirement'] as String?;
    _jAddress = snapshotData['j_address'] as String?;
    _companyRef = snapshotData['company_ref'] as DocumentReference?;
    _userRef = snapshotData['user_ref'] as DocumentReference?;
    _isFeatured = snapshotData['is_featured'] as bool?;
    _jCategory = snapshotData['j_category'] as String?;
    _jType = snapshotData['j_type'] as String?;
    _jPosition = snapshotData['j_position'] as String?;
    _appliedCandidate = getDataList(snapshotData['applied_candidate']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Job_Collection');

  static Stream<JobCollectionRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => JobCollectionRecord.fromSnapshot(s));

  static Future<JobCollectionRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => JobCollectionRecord.fromSnapshot(s));

  static JobCollectionRecord fromSnapshot(DocumentSnapshot snapshot) =>
      JobCollectionRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static JobCollectionRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      JobCollectionRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'JobCollectionRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is JobCollectionRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createJobCollectionRecordData({
  String? jId,
  String? jName,
  double? jSalary,
  String? jRecruiterId,
  String? companyName,
  String? companyId,
  String? description,
  String? industry,
  String? location,
  String? benefits,
  DateTime? postingDate,
  DateTime? lastUpdated,
  int? jView,
  String? jRequirement,
  String? jAddress,
  DocumentReference? companyRef,
  DocumentReference? userRef,
  bool? isFeatured,
  String? jCategory,
  String? jType,
  String? jPosition,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'j_id': jId,
      'j_name': jName,
      'j_salary': jSalary,
      'j_recruiter_id': jRecruiterId,
      'company_name': companyName,
      'company_id': companyId,
      'description': description,
      'industry': industry,
      'location': location,
      'benefits': benefits,
      'posting_date': postingDate,
      'last_updated': lastUpdated,
      'j_view': jView,
      'j_requirement': jRequirement,
      'j_address': jAddress,
      'company_ref': companyRef,
      'user_ref': userRef,
      'is_featured': isFeatured,
      'j_category': jCategory,
      'j_type': jType,
      'j_position': jPosition,
    }.withoutNulls,
  );

  return firestoreData;
}

class JobCollectionRecordDocumentEquality
    implements Equality<JobCollectionRecord> {
  const JobCollectionRecordDocumentEquality();

  @override
  bool equals(JobCollectionRecord? e1, JobCollectionRecord? e2) {
    const listEquality = ListEquality();
    return e1?.jId == e2?.jId &&
        e1?.jName == e2?.jName &&
        e1?.jSalary == e2?.jSalary &&
        e1?.jRecruiterId == e2?.jRecruiterId &&
        e1?.companyName == e2?.companyName &&
        e1?.companyId == e2?.companyId &&
        e1?.description == e2?.description &&
        e1?.industry == e2?.industry &&
        e1?.location == e2?.location &&
        e1?.benefits == e2?.benefits &&
        e1?.postingDate == e2?.postingDate &&
        e1?.lastUpdated == e2?.lastUpdated &&
        e1?.jView == e2?.jView &&
        e1?.jRequirement == e2?.jRequirement &&
        e1?.jAddress == e2?.jAddress &&
        e1?.companyRef == e2?.companyRef &&
        e1?.userRef == e2?.userRef &&
        e1?.isFeatured == e2?.isFeatured &&
        e1?.jCategory == e2?.jCategory &&
        e1?.jType == e2?.jType &&
        e1?.jPosition == e2?.jPosition &&
        listEquality.equals(e1?.appliedCandidate, e2?.appliedCandidate);
  }

  @override
  int hash(JobCollectionRecord? e) => const ListEquality().hash([
        e?.jId,
        e?.jName,
        e?.jSalary,
        e?.jRecruiterId,
        e?.companyName,
        e?.companyId,
        e?.description,
        e?.industry,
        e?.location,
        e?.benefits,
        e?.postingDate,
        e?.lastUpdated,
        e?.jView,
        e?.jRequirement,
        e?.jAddress,
        e?.companyRef,
        e?.userRef,
        e?.isFeatured,
        e?.jCategory,
        e?.jType,
        e?.jPosition,
        e?.appliedCandidate
      ]);

  @override
  bool isValidKey(Object? o) => o is JobCollectionRecord;
}
