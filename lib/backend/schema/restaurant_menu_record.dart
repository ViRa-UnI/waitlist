import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class RestaurantMenuRecord extends FirestoreRecord {
  RestaurantMenuRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "Name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "Description" field.
  String? _description;
  String get description => _description ?? '';
  bool hasDescription() => _description != null;

  // "Image" field.
  String? _image;
  String get image => _image ?? '';
  bool hasImage() => _image != null;

  // "Price" field.
  String? _price;
  String get price => _price ?? '';
  bool hasPrice() => _price != null;

  // "Category" field.
  String? _category;
  String get category => _category ?? '';
  bool hasCategory() => _category != null;

  void _initializeFields() {
    _name = snapshotData['Name'] as String?;
    _description = snapshotData['Description'] as String?;
    _image = snapshotData['Image'] as String?;
    _price = snapshotData['Price'] as String?;
    _category = snapshotData['Category'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('restaurantMenu');

  static Stream<RestaurantMenuRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => RestaurantMenuRecord.fromSnapshot(s));

  static Future<RestaurantMenuRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => RestaurantMenuRecord.fromSnapshot(s));

  static RestaurantMenuRecord fromSnapshot(DocumentSnapshot snapshot) =>
      RestaurantMenuRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static RestaurantMenuRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      RestaurantMenuRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'RestaurantMenuRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is RestaurantMenuRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createRestaurantMenuRecordData({
  String? name,
  String? description,
  String? image,
  String? price,
  String? category,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'Name': name,
      'Description': description,
      'Image': image,
      'Price': price,
      'Category': category,
    }.withoutNulls,
  );

  return firestoreData;
}

class RestaurantMenuRecordDocumentEquality
    implements Equality<RestaurantMenuRecord> {
  const RestaurantMenuRecordDocumentEquality();

  @override
  bool equals(RestaurantMenuRecord? e1, RestaurantMenuRecord? e2) {
    return e1?.name == e2?.name &&
        e1?.description == e2?.description &&
        e1?.image == e2?.image &&
        e1?.price == e2?.price &&
        e1?.category == e2?.category;
  }

  @override
  int hash(RestaurantMenuRecord? e) => const ListEquality()
      .hash([e?.name, e?.description, e?.image, e?.price, e?.category]);

  @override
  bool isValidKey(Object? o) => o is RestaurantMenuRecord;
}
