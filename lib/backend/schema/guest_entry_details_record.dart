import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class GuestEntryDetailsRecord extends FirestoreRecord {
  GuestEntryDetailsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "mobileNum" field.
  String? _mobileNum;
  String get mobileNum => _mobileNum ?? '';
  bool hasMobileNum() => _mobileNum != null;

  // "type" field.
  String? _type;
  String get type => _type ?? '';
  bool hasType() => _type != null;

  // "age" field.
  String? _age;
  String get age => _age ?? '';
  bool hasAge() => _age != null;

  // "category" field.
  String? _category;
  String get category => _category ?? '';
  bool hasCategory() => _category != null;

  // "seatingArea" field.
  String? _seatingArea;
  String get seatingArea => _seatingArea ?? '';
  bool hasSeatingArea() => _seatingArea != null;

  // "waitingTime" field.
  String? _waitingTime;
  String get waitingTime => _waitingTime ?? '';
  bool hasWaitingTime() => _waitingTime != null;

  // "partySize" field.
  String? _partySize;
  String get partySize => _partySize ?? '';
  bool hasPartySize() => _partySize != null;

  void _initializeFields() {
    _name = snapshotData['name'] as String?;
    _mobileNum = snapshotData['mobileNum'] as String?;
    _type = snapshotData['type'] as String?;
    _age = snapshotData['age'] as String?;
    _category = snapshotData['category'] as String?;
    _seatingArea = snapshotData['seatingArea'] as String?;
    _waitingTime = snapshotData['waitingTime'] as String?;
    _partySize = snapshotData['partySize'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('guest_entry_details');

  static Stream<GuestEntryDetailsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => GuestEntryDetailsRecord.fromSnapshot(s));

  static Future<GuestEntryDetailsRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then((s) => GuestEntryDetailsRecord.fromSnapshot(s));

  static GuestEntryDetailsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      GuestEntryDetailsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static GuestEntryDetailsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      GuestEntryDetailsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'GuestEntryDetailsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is GuestEntryDetailsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createGuestEntryDetailsRecordData({
  String? name,
  String? mobileNum,
  String? type,
  String? age,
  String? category,
  String? seatingArea,
  String? waitingTime,
  String? partySize,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'name': name,
      'mobileNum': mobileNum,
      'type': type,
      'age': age,
      'category': category,
      'seatingArea': seatingArea,
      'waitingTime': waitingTime,
      'partySize': partySize,
    }.withoutNulls,
  );

  return firestoreData;
}

class GuestEntryDetailsRecordDocumentEquality
    implements Equality<GuestEntryDetailsRecord> {
  const GuestEntryDetailsRecordDocumentEquality();

  @override
  bool equals(GuestEntryDetailsRecord? e1, GuestEntryDetailsRecord? e2) {
    return e1?.name == e2?.name &&
        e1?.mobileNum == e2?.mobileNum &&
        e1?.type == e2?.type &&
        e1?.age == e2?.age &&
        e1?.category == e2?.category &&
        e1?.seatingArea == e2?.seatingArea &&
        e1?.waitingTime == e2?.waitingTime &&
        e1?.partySize == e2?.partySize;
  }

  @override
  int hash(GuestEntryDetailsRecord? e) => const ListEquality().hash([
        e?.name,
        e?.mobileNum,
        e?.type,
        e?.age,
        e?.category,
        e?.seatingArea,
        e?.waitingTime,
        e?.partySize
      ]);

  @override
  bool isValidKey(Object? o) => o is GuestEntryDetailsRecord;
}
