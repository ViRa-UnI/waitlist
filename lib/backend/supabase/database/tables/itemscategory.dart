import '../database.dart';

class ItemscategoryTable extends SupabaseTable<ItemscategoryRow> {
  @override
  String get tableName => 'itemscategory';

  @override
  ItemscategoryRow createRow(Map<String, dynamic> data) =>
      ItemscategoryRow(data);
}

class ItemscategoryRow extends SupabaseDataRow {
  ItemscategoryRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => ItemscategoryTable();

  String get id => getField<String>('id')!;
  set id(String value) => setField<String>('id', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);

  String? get categoryname => getField<String>('categoryname');
  set categoryname(String? value) => setField<String>('categoryname', value);

  String? get mainimage => getField<String>('mainimage');
  set mainimage(String? value) => setField<String>('mainimage', value);

  String? get image1x => getField<String>('image_1x');
  set image1x(String? value) => setField<String>('image_1x', value);

  String? get image2x => getField<String>('image_2x');
  set image2x(String? value) => setField<String>('image_2x', value);

  String? get image3x => getField<String>('image_3x');
  set image3x(String? value) => setField<String>('image_3x', value);
}
