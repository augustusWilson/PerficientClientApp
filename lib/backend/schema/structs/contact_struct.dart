// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ContactStruct extends BaseStruct {
  ContactStruct({
    String? name,
    String? title,
    String? businessUnit,
    String? location,
    String? notes,
    String? phoneNumber,
    String? email,
  })  : _name = name,
        _title = title,
        _businessUnit = businessUnit,
        _location = location,
        _notes = notes,
        _phoneNumber = phoneNumber,
        _email = email;

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  set name(String? val) => _name = val;
  bool hasName() => _name != null;

  // "title" field.
  String? _title;
  String get title => _title ?? '';
  set title(String? val) => _title = val;
  bool hasTitle() => _title != null;

  // "businessUnit" field.
  String? _businessUnit;
  String get businessUnit => _businessUnit ?? '';
  set businessUnit(String? val) => _businessUnit = val;
  bool hasBusinessUnit() => _businessUnit != null;

  // "location" field.
  String? _location;
  String get location => _location ?? '';
  set location(String? val) => _location = val;
  bool hasLocation() => _location != null;

  // "notes" field.
  String? _notes;
  String get notes => _notes ?? '';
  set notes(String? val) => _notes = val;
  bool hasNotes() => _notes != null;

  // "phone_number" field.
  String? _phoneNumber;
  String get phoneNumber => _phoneNumber ?? '';
  set phoneNumber(String? val) => _phoneNumber = val;
  bool hasPhoneNumber() => _phoneNumber != null;

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  set email(String? val) => _email = val;
  bool hasEmail() => _email != null;

  static ContactStruct fromMap(Map<String, dynamic> data) => ContactStruct(
        name: data['name'] as String?,
        title: data['title'] as String?,
        businessUnit: data['businessUnit'] as String?,
        location: data['location'] as String?,
        notes: data['notes'] as String?,
        phoneNumber: data['phone_number'] as String?,
        email: data['email'] as String?,
      );

  static ContactStruct? maybeFromMap(dynamic data) =>
      data is Map ? ContactStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'name': _name,
        'title': _title,
        'businessUnit': _businessUnit,
        'location': _location,
        'notes': _notes,
        'phone_number': _phoneNumber,
        'email': _email,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'name': serializeParam(
          _name,
          ParamType.String,
        ),
        'title': serializeParam(
          _title,
          ParamType.String,
        ),
        'businessUnit': serializeParam(
          _businessUnit,
          ParamType.String,
        ),
        'location': serializeParam(
          _location,
          ParamType.String,
        ),
        'notes': serializeParam(
          _notes,
          ParamType.String,
        ),
        'phone_number': serializeParam(
          _phoneNumber,
          ParamType.String,
        ),
        'email': serializeParam(
          _email,
          ParamType.String,
        ),
      }.withoutNulls;

  static ContactStruct fromSerializableMap(Map<String, dynamic> data) =>
      ContactStruct(
        name: deserializeParam(
          data['name'],
          ParamType.String,
          false,
        ),
        title: deserializeParam(
          data['title'],
          ParamType.String,
          false,
        ),
        businessUnit: deserializeParam(
          data['businessUnit'],
          ParamType.String,
          false,
        ),
        location: deserializeParam(
          data['location'],
          ParamType.String,
          false,
        ),
        notes: deserializeParam(
          data['notes'],
          ParamType.String,
          false,
        ),
        phoneNumber: deserializeParam(
          data['phone_number'],
          ParamType.String,
          false,
        ),
        email: deserializeParam(
          data['email'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'ContactStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is ContactStruct &&
        name == other.name &&
        title == other.title &&
        businessUnit == other.businessUnit &&
        location == other.location &&
        notes == other.notes &&
        phoneNumber == other.phoneNumber &&
        email == other.email;
  }

  @override
  int get hashCode => const ListEquality()
      .hash([name, title, businessUnit, location, notes, phoneNumber, email]);
}

ContactStruct createContactStruct({
  String? name,
  String? title,
  String? businessUnit,
  String? location,
  String? notes,
  String? phoneNumber,
  String? email,
}) =>
    ContactStruct(
      name: name,
      title: title,
      businessUnit: businessUnit,
      location: location,
      notes: notes,
      phoneNumber: phoneNumber,
      email: email,
    );
