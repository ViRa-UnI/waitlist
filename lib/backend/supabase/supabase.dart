import 'package:supabase_flutter/supabase_flutter.dart' hide Provider;

export 'database/database.dart';

const _kSupabaseUrl = 'https://xtprxbhvaezffuuoquyn.supabase.co';
const _kSupabaseAnonKey =
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Inh0cHJ4Ymh2YWV6ZmZ1dW9xdXluIiwicm9sZSI6ImFub24iLCJpYXQiOjE2OTMxMTcwMTMsImV4cCI6MjAwODY5MzAxM30.5piQ0gO3FToF53onui4uH41OgJqHYU8Ihhx81Bm4Ct8';

class SupaFlow {
  SupaFlow._();

  static SupaFlow? _instance;
  static SupaFlow get instance => _instance ??= SupaFlow._();

  final _supabase = Supabase.instance.client;
  static SupabaseClient get client => instance._supabase;

  static Future initialize() => Supabase.initialize(
        url: _kSupabaseUrl,
        anonKey: _kSupabaseAnonKey,
        debug: false,
      );
}
