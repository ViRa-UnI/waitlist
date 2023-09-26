import '../database.dart';

class GuestEntriesTable extends SupabaseTable<GuestEntriesRow> {
  @override
  String get tableName => 'guestEntries';

  @override
  GuestEntriesRow createRow(Map<String, dynamic> data) => GuestEntriesRow(data);
}

class GuestEntriesRow extends SupabaseDataRow {
  GuestEntriesRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => GuestEntriesTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get name => getField<String>('name');
  set name(String? value) => setField<String>('name', value);

  String? get type => getField<String>('type');
  set type(String? value) => setField<String>('type', value);

  String? get mobile => getField<String>('mobile');
  set mobile(String? value) => setField<String>('mobile', value);

  String? get age => getField<String>('age');
  set age(String? value) => setField<String>('age', value);

  String? get category => getField<String>('category');
  set category(String? value) => setField<String>('category', value);

  String? get seatingArea => getField<String>('seatingArea');
  set seatingArea(String? value) => setField<String>('seatingArea', value);

  String? get waitingTime => getField<String>('waitingTime');
  set waitingTime(String? value) => setField<String>('waitingTime', value);

  String? get partySize => getField<String>('partySize');
  set partySize(String? value) => setField<String>('partySize', value);

  String get uniqueID => getField<String>('uniqueID')!;
  set uniqueID(String value) => setField<String>('uniqueID', value);
}
