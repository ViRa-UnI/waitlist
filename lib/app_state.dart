import 'package:flutter/material.dart';
import '/backend/backend.dart';
import 'backend/api_requests/api_manager.dart';
import 'backend/supabase/supabase.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/flutter_flow_util.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {}

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  String _editingRowID = '';
  String get editingRowID => _editingRowID;
  set editingRowID(String _value) {
    _editingRowID = _value;
  }

  String _NoVisitID = '';
  String get NoVisitID => _NoVisitID;
  set NoVisitID(String _value) {
    _NoVisitID = _value;
  }

  String _VisitedID = '';
  String get VisitedID => _VisitedID;
  set VisitedID(String _value) {
    _VisitedID = _value;
  }

  String _selectedCategory = '';
  String get selectedCategory => _selectedCategory;
  set selectedCategory(String _value) {
    _selectedCategory = _value;
  }

  String _guestCategorySelected = '';
  String get guestCategorySelected => _guestCategorySelected;
  set guestCategorySelected(String _value) {
    _guestCategorySelected = _value;
  }

  String _guestTypeSelected = '';
  String get guestTypeSelected => _guestTypeSelected;
  set guestTypeSelected(String _value) {
    _guestTypeSelected = _value;
  }
}

LatLng? _latLngFromString(String? val) {
  if (val == null) {
    return null;
  }
  final split = val.split(',');
  final lat = double.parse(split.first);
  final lng = double.parse(split.last);
  return LatLng(lat, lng);
}

void _safeInit(Function() initializeField) {
  try {
    initializeField();
  } catch (_) {}
}

Future _safeInitAsync(Function() initializeField) async {
  try {
    await initializeField();
  } catch (_) {}
}
