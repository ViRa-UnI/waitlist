import '../database.dart';

class ItemsDuplicateTable extends SupabaseTable<ItemsDuplicateRow> {
  @override
  String get tableName => 'items_duplicate';

  @override
  ItemsDuplicateRow createRow(Map<String, dynamic> data) =>
      ItemsDuplicateRow(data);
}

class ItemsDuplicateRow extends SupabaseDataRow {
  ItemsDuplicateRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => ItemsDuplicateTable();

  String get id => getField<String>('id')!;
  set id(String value) => setField<String>('id', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);

  String? get itemname => getField<String>('itemname');
  set itemname(String? value) => setField<String>('itemname', value);

  String? get mainimage => getField<String>('mainimage');
  set mainimage(String? value) => setField<String>('mainimage', value);

  String? get image1x => getField<String>('image_1x');
  set image1x(String? value) => setField<String>('image_1x', value);

  String? get image2x => getField<String>('image_2x');
  set image2x(String? value) => setField<String>('image_2x', value);

  String? get image3x => getField<String>('image_3x');
  set image3x(String? value) => setField<String>('image_3x', value);

  String? get itemcategory => getField<String>('itemcategory');
  set itemcategory(String? value) => setField<String>('itemcategory', value);

  String? get shortdescription => getField<String>('shortdescription');
  set shortdescription(String? value) =>
      setField<String>('shortdescription', value);

  String? get itemprice => getField<String>('itemprice');
  set itemprice(String? value) => setField<String>('itemprice', value);
}
