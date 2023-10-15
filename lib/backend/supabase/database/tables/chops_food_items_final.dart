import '../database.dart';

class ChopsFoodItemsFinalTable extends SupabaseTable<ChopsFoodItemsFinalRow> {
  @override
  String get tableName => 'ChopsFoodItems_Final';

  @override
  ChopsFoodItemsFinalRow createRow(Map<String, dynamic> data) =>
      ChopsFoodItemsFinalRow(data);
}

class ChopsFoodItemsFinalRow extends SupabaseDataRow {
  ChopsFoodItemsFinalRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => ChopsFoodItemsFinalTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  String? get nameEnglish => getField<String>('name_english');
  set nameEnglish(String? value) => setField<String>('name_english', value);

  String? get category => getField<String>('category');
  set category(String? value) => setField<String>('category', value);

  String? get shortdescription => getField<String>('shortdescription');
  set shortdescription(String? value) =>
      setField<String>('shortdescription', value);

  String? get longdescription => getField<String>('longdescription');
  set longdescription(String? value) =>
      setField<String>('longdescription', value);

  String? get price => getField<String>('price');
  set price(String? value) => setField<String>('price', value);

  String? get itemNameArabic => getField<String>('item_name_arabic');
  set itemNameArabic(String? value) =>
      setField<String>('item_name_arabic', value);

  String? get arabicLongDescription =>
      getField<String>('arabic_long_description');
  set arabicLongDescription(String? value) =>
      setField<String>('arabic_long_description', value);

  String? get arabicShortDescription =>
      getField<String>('arabic_short_description');
  set arabicShortDescription(String? value) =>
      setField<String>('arabic_short_description', value);

  String? get arabicCategory => getField<String>('arabic_category');
  set arabicCategory(String? value) =>
      setField<String>('arabic_category', value);

  String? get arabicPrice => getField<String>('arabic_price');
  set arabicPrice(String? value) => setField<String>('arabic_price', value);

  String? get image => getField<String>('image');
  set image(String? value) => setField<String>('image', value);
}
