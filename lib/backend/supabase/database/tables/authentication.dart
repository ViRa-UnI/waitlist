import '../database.dart';

class AuthenticationTable extends SupabaseTable<AuthenticationRow> {
  @override
  String get tableName => 'authentication';

  @override
  AuthenticationRow createRow(Map<String, dynamic> data) =>
      AuthenticationRow(data);
}

class AuthenticationRow extends SupabaseDataRow {
  AuthenticationRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => AuthenticationTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get email => getField<String>('email');
  set email(String? value) => setField<String>('email', value);

  String? get password => getField<String>('password');
  set password(String? value) => setField<String>('password', value);

  String? get name => getField<String>('name');
  set name(String? value) => setField<String>('name', value);
}
