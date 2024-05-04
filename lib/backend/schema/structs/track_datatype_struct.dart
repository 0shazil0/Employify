// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class TrackDatatypeStruct extends FFFirebaseStruct {
  TrackDatatypeStruct({
    String? updateMessage,
    DateTime? time,
    bool? isUnderReview,
    bool? isRejected,
    bool? isAccepted,
    DocumentReference? ref,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _updateMessage = updateMessage,
        _time = time,
        _isUnderReview = isUnderReview,
        _isRejected = isRejected,
        _isAccepted = isAccepted,
        _ref = ref,
        super(firestoreUtilData);

  // "updateMessage" field.
  String? _updateMessage;
  String get updateMessage => _updateMessage ?? '';
  set updateMessage(String? val) => _updateMessage = val;
  bool hasUpdateMessage() => _updateMessage != null;

  // "time" field.
  DateTime? _time;
  DateTime? get time => _time;
  set time(DateTime? val) => _time = val;
  bool hasTime() => _time != null;

  // "is_under_review" field.
  bool? _isUnderReview;
  bool get isUnderReview => _isUnderReview ?? false;
  set isUnderReview(bool? val) => _isUnderReview = val;
  bool hasIsUnderReview() => _isUnderReview != null;

  // "is_rejected" field.
  bool? _isRejected;
  bool get isRejected => _isRejected ?? false;
  set isRejected(bool? val) => _isRejected = val;
  bool hasIsRejected() => _isRejected != null;

  // "is_accepted" field.
  bool? _isAccepted;
  bool get isAccepted => _isAccepted ?? false;
  set isAccepted(bool? val) => _isAccepted = val;
  bool hasIsAccepted() => _isAccepted != null;

  // "ref" field.
  DocumentReference? _ref;
  DocumentReference? get ref => _ref;
  set ref(DocumentReference? val) => _ref = val;
  bool hasRef() => _ref != null;

  static TrackDatatypeStruct fromMap(Map<String, dynamic> data) =>
      TrackDatatypeStruct(
        updateMessage: data['updateMessage'] as String?,
        time: data['time'] as DateTime?,
        isUnderReview: data['is_under_review'] as bool?,
        isRejected: data['is_rejected'] as bool?,
        isAccepted: data['is_accepted'] as bool?,
        ref: data['ref'] as DocumentReference?,
      );

  static TrackDatatypeStruct? maybeFromMap(dynamic data) => data is Map
      ? TrackDatatypeStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'updateMessage': _updateMessage,
        'time': _time,
        'is_under_review': _isUnderReview,
        'is_rejected': _isRejected,
        'is_accepted': _isAccepted,
        'ref': _ref,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'updateMessage': serializeParam(
          _updateMessage,
          ParamType.String,
        ),
        'time': serializeParam(
          _time,
          ParamType.DateTime,
        ),
        'is_under_review': serializeParam(
          _isUnderReview,
          ParamType.bool,
        ),
        'is_rejected': serializeParam(
          _isRejected,
          ParamType.bool,
        ),
        'is_accepted': serializeParam(
          _isAccepted,
          ParamType.bool,
        ),
        'ref': serializeParam(
          _ref,
          ParamType.DocumentReference,
        ),
      }.withoutNulls;

  static TrackDatatypeStruct fromSerializableMap(Map<String, dynamic> data) =>
      TrackDatatypeStruct(
        updateMessage: deserializeParam(
          data['updateMessage'],
          ParamType.String,
          false,
        ),
        time: deserializeParam(
          data['time'],
          ParamType.DateTime,
          false,
        ),
        isUnderReview: deserializeParam(
          data['is_under_review'],
          ParamType.bool,
          false,
        ),
        isRejected: deserializeParam(
          data['is_rejected'],
          ParamType.bool,
          false,
        ),
        isAccepted: deserializeParam(
          data['is_accepted'],
          ParamType.bool,
          false,
        ),
        ref: deserializeParam(
          data['ref'],
          ParamType.DocumentReference,
          false,
          collectionNamePath: ['applied_job'],
        ),
      );

  @override
  String toString() => 'TrackDatatypeStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is TrackDatatypeStruct &&
        updateMessage == other.updateMessage &&
        time == other.time &&
        isUnderReview == other.isUnderReview &&
        isRejected == other.isRejected &&
        isAccepted == other.isAccepted &&
        ref == other.ref;
  }

  @override
  int get hashCode => const ListEquality()
      .hash([updateMessage, time, isUnderReview, isRejected, isAccepted, ref]);
}

TrackDatatypeStruct createTrackDatatypeStruct({
  String? updateMessage,
  DateTime? time,
  bool? isUnderReview,
  bool? isRejected,
  bool? isAccepted,
  DocumentReference? ref,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    TrackDatatypeStruct(
      updateMessage: updateMessage,
      time: time,
      isUnderReview: isUnderReview,
      isRejected: isRejected,
      isAccepted: isAccepted,
      ref: ref,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

TrackDatatypeStruct? updateTrackDatatypeStruct(
  TrackDatatypeStruct? trackDatatype, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    trackDatatype
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addTrackDatatypeStructData(
  Map<String, dynamic> firestoreData,
  TrackDatatypeStruct? trackDatatype,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (trackDatatype == null) {
    return;
  }
  if (trackDatatype.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && trackDatatype.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final trackDatatypeData =
      getTrackDatatypeFirestoreData(trackDatatype, forFieldValue);
  final nestedData =
      trackDatatypeData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = trackDatatype.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getTrackDatatypeFirestoreData(
  TrackDatatypeStruct? trackDatatype, [
  bool forFieldValue = false,
]) {
  if (trackDatatype == null) {
    return {};
  }
  final firestoreData = mapToFirestore(trackDatatype.toMap());

  // Add any Firestore field values
  trackDatatype.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getTrackDatatypeListFirestoreData(
  List<TrackDatatypeStruct>? trackDatatypes,
) =>
    trackDatatypes
        ?.map((e) => getTrackDatatypeFirestoreData(e, true))
        .toList() ??
    [];
