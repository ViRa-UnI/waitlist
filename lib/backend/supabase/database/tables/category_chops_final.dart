import '../database.dart';

class CategoryChopsFinalTable extends SupabaseTable<CategoryChopsFinalRow> {
  @override
  String get tableName => 'CategoryChops-Final';

  @override
  CategoryChopsFinalRow createRow(Map<String, dynamic> data) =>
      CategoryChopsFinalRow(data);
}

class CategoryChopsFinalRow extends SupabaseDataRow {
  CategoryChopsFinalRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => CategoryChopsFinalTable();

  String get id => getField<String>('id')!;
  set id(String value) => setField<String>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get category => getField<String>('Category');
  set category(String? value) => setField<String>('Category', value);

  String? get image => getField<String>('Image');
  set image(String? value) => setField<String>('Image', value);

  String? get orderSeqence => getField<String>('orderSeqence');
  set orderSeqence(String? value) => setField<String>('orderSeqence', value);

  String? get categoryArabic => getField<String>('categoryArabic');
  set categoryArabic(String? value) =>
      setField<String>('categoryArabic', value);

  String? get image3x => getField<String>('Image 3x');
  set image3x(String? value) => setField<String>('Image 3x', value);

  String? get categorySecondLine => getField<String>('CategorySecondLine');
  set categorySecondLine(String? value) =>
      setField<String>('CategorySecondLine', value);
}
