import '../database.dart';

class FoodItemsChopsTable extends SupabaseTable<FoodItemsChopsRow> {
  @override
  String get tableName => 'foodItems_Chops';

  @override
  FoodItemsChopsRow createRow(Map<String, dynamic> data) =>
      FoodItemsChopsRow(data);
}

class FoodItemsChopsRow extends SupabaseDataRow {
  FoodItemsChopsRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => FoodItemsChopsTable();

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

  String? get image1x => getField<String>('Image 1x');
  set image1x(String? value) => setField<String>('Image 1x', value);

  String? get image2x => getField<String>('Image 2x');
  set image2x(String? value) => setField<String>('Image 2x', value);

  String? get image3x => getField<String>('Image 3x');
  set image3x(String? value) => setField<String>('Image 3x', value);

  String? get itemNameArabic => getField<String>('ItemNameArabic');
  set itemNameArabic(String? value) =>
      setField<String>('ItemNameArabic', value);

  String? get arabicLongDescription =>
      getField<String>('ArabicLongDescription');
  set arabicLongDescription(String? value) =>
      setField<String>('ArabicLongDescription', value);

  String? get arabicshortDescription =>
      getField<String>('ArabicshortDescription');
  set arabicshortDescription(String? value) =>
      setField<String>('ArabicshortDescription', value);

  String? get arabicCategory => getField<String>('ArabicCategory');
  set arabicCategory(String? value) =>
      setField<String>('ArabicCategory', value);

  String? get arabicprice => getField<String>('Arabicprice');
  set arabicprice(String? value) => setField<String>('Arabicprice', value);
}
