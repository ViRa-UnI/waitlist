import '../database.dart';

class GuestEntriesVisitedTable extends SupabaseTable<GuestEntriesVisitedRow> {
  @override
  String get tableName => 'guestEntries_visited';

  @override
  GuestEntriesVisitedRow createRow(Map<String, dynamic> data) =>
      GuestEntriesVisitedRow(data);
}

class GuestEntriesVisitedRow extends SupabaseDataRow {
  GuestEntriesVisitedRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => GuestEntriesVisitedTable();

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

  String? get messageContent => getField<String>('messageContent');
  set messageContent(String? value) =>
      setField<String>('messageContent', value);

  String? get vistedNotes => getField<String>('vistedNotes');
  set vistedNotes(String? value) => setField<String>('vistedNotes', value);

  String? get userlog => getField<String>('userlog');
  set userlog(String? value) => setField<String>('userlog', value);

  String? get tableField => getField<String>('Table');
  set tableField(String? value) => setField<String>('Table', value);
}
