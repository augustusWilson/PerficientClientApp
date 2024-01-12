import 'package:flutter/material.dart';
import '/backend/schema/structs/index.dart';
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

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
    _safeInit(() {
      _contacts = prefs
              .getStringList('ff_contacts')
              ?.map((x) {
                try {
                  return ContactStruct.fromSerializableMap(jsonDecode(x));
                } catch (e) {
                  print("Can't decode persisted data type. Error: $e.");
                  return null;
                }
              })
              .withoutNulls
              .toList() ??
          _contacts;
    });
    _safeInit(() {
      if (prefs.containsKey('ff_userProfile')) {
        try {
          final serializedData = prefs.getString('ff_userProfile') ?? '{}';
          _userProfile =
              UserStruct.fromSerializableMap(jsonDecode(serializedData));
        } catch (e) {
          print("Can't decode persisted data type. Error: $e.");
        }
      }
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  List<ContactStruct> _contacts = [];
  List<ContactStruct> get contacts => _contacts;
  set contacts(List<ContactStruct> value) {
    _contacts = value;
    prefs.setStringList(
        'ff_contacts', value.map((x) => x.serialize()).toList());
  }

  void addToContacts(ContactStruct value) {
    _contacts.add(value);
    prefs.setStringList(
        'ff_contacts', _contacts.map((x) => x.serialize()).toList());
  }

  void removeFromContacts(ContactStruct value) {
    _contacts.remove(value);
    prefs.setStringList(
        'ff_contacts', _contacts.map((x) => x.serialize()).toList());
  }

  void removeAtIndexFromContacts(int index) {
    _contacts.removeAt(index);
    prefs.setStringList(
        'ff_contacts', _contacts.map((x) => x.serialize()).toList());
  }

  void updateContactsAtIndex(
    int index,
    ContactStruct Function(ContactStruct) updateFn,
  ) {
    _contacts[index] = updateFn(_contacts[index]);
    prefs.setStringList(
        'ff_contacts', _contacts.map((x) => x.serialize()).toList());
  }

  void insertAtIndexInContacts(int index, ContactStruct value) {
    _contacts.insert(index, value);
    prefs.setStringList(
        'ff_contacts', _contacts.map((x) => x.serialize()).toList());
  }

  UserStruct _userProfile = UserStruct();
  UserStruct get userProfile => _userProfile;
  set userProfile(UserStruct value) {
    _userProfile = value;
    prefs.setString('ff_userProfile', value.serialize());
  }

  void updateUserProfileStruct(Function(UserStruct) updateFn) {
    updateFn(_userProfile);
    prefs.setString('ff_userProfile', _userProfile.serialize());
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
