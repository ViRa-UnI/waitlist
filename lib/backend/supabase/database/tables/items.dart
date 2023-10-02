import '../database.dart';

class ItemsTable extends SupabaseTable<ItemsRow> {
  @override
  String get tableName => 'items';

  @override
  ItemsRow createRow(Map<String, dynamic> data) => ItemsRow(data);
}

class ItemsRow extends SupabaseDataRow {
  ItemsRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => ItemsTable();

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
