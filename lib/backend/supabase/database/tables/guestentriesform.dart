import '../database.dart';

class GuestentriesformTable extends SupabaseTable<GuestentriesformRow> {
  @override
  String get tableName => 'guestentriesform';

  @override
  GuestentriesformRow createRow(Map<String, dynamic> data) =>
      GuestentriesformRow(data);
}

class GuestentriesformRow extends SupabaseDataRow {
  GuestentriesformRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => GuestentriesformTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  String? get uuid => getField<String>('uuid');
  set uuid(String? value) => setField<String>('uuid', value);

  DateTime? get timestamp => getField<DateTime>('timestamp');
  set timestamp(DateTime? value) => setField<DateTime>('timestamp', value);

  String? get guestname => getField<String>('guestname');
  set guestname(String? value) => setField<String>('guestname', value);

  String? get type => getField<String>('type');
  set type(String? value) => setField<String>('type', value);

  int? get mobilenumber => getField<int>('mobilenumber');
  set mobilenumber(int? value) => setField<int>('mobilenumber', value);

  String? get age => getField<String>('age');
  set age(String? value) => setField<String>('age', value);

  String? get category => getField<String>('category');
  set category(String? value) => setField<String>('category', value);

  String? get seatingarea => getField<String>('seatingarea');
  set seatingarea(String? value) => setField<String>('seatingarea', value);

  int? get waitingtime => getField<int>('waitingtime');
  set waitingtime(int? value) => setField<int>('waitingtime', value);

  int? get partysize => getField<int>('partysize');
  set partysize(int? value) => setField<int>('partysize', value);

  String? get remainingtime => getField<String>('remainingtime');
  set remainingtime(String? value) => setField<String>('remainingtime', value);

  String? get smsstatus => getField<String>('smsstatus');
  set smsstatus(String? value) => setField<String>('smsstatus', value);
}
