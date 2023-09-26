import '../database.dart';

class CategoryTable extends SupabaseTable<CategoryRow> {
  @override
  String get tableName => 'Category';

  @override
  CategoryRow createRow(Map<String, dynamic> data) => CategoryRow(data);
}

class CategoryRow extends SupabaseDataRow {
  CategoryRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => CategoryTable();

  String get id => getField<String>('id')!;
  set id(String value) => setField<String>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get category => getField<String>('Category');
  set category(String? value) => setField<String>('Category', value);

  String? get image => getField<String>('Image');
  set image(String? value) => setField<String>('Image', value);

  String? get image1x => getField<String>('Image 1x');
  set image1x(String? value) => setField<String>('Image 1x', value);

  String? get image2x => getField<String>('Image 2x');
  set image2x(String? value) => setField<String>('Image 2x', value);

  String? get image3x => getField<String>('Image 3x');
  set image3x(String? value) => setField<String>('Image 3x', value);
}
