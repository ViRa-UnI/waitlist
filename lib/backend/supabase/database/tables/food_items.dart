import '../database.dart';

class FoodItemsTable extends SupabaseTable<FoodItemsRow> {
  @override
  String get tableName => 'foodItems';

  @override
  FoodItemsRow createRow(Map<String, dynamic> data) => FoodItemsRow(data);
}

class FoodItemsRow extends SupabaseDataRow {
  FoodItemsRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => FoodItemsTable();

  String get id => getField<String>('id')!;
  set id(String value) => setField<String>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get name => getField<String>('name');
  set name(String? value) => setField<String>('name', value);

  String? get image => getField<String>('image');
  set image(String? value) => setField<String>('image', value);

  String? get shortDescription => getField<String>('shortDescription');
  set shortDescription(String? value) =>
      setField<String>('shortDescription', value);

  String? get price => getField<String>('price');
  set price(String? value) => setField<String>('price', value);

  String? get longDescription => getField<String>('longDescription');
  set longDescription(String? value) =>
      setField<String>('longDescription', value);

  String? get category => getField<String>('Category');
  set category(String? value) => setField<String>('Category', value);
}
