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
  })  : _name = name,
        _title = title,
        _businessUnit = businessUnit,
        _location = location,
        _notes = notes;

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

  static ContactStruct fromMap(Map<String, dynamic> data) => ContactStruct(
        name: data['name'] as String?,
        title: data['title'] as String?,
        businessUnit: data['businessUnit'] as String?,
        location: data['location'] as String?,
        notes: data['notes'] as String?,
      );

  static ContactStruct? maybeFromMap(dynamic data) =>
      data is Map ? ContactStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'name': _name,
        'title': _title,
        'businessUnit': _businessUnit,
        'location': _location,
        'notes': _notes,
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
        notes == other.notes;
  }

  @override
  int get hashCode =>
      const ListEquality().hash([name, title, businessUnit, location, notes]);
}

ContactStruct createContactStruct({
  String? name,
  String? title,
  String? businessUnit,
  String? location,
  String? notes,
}) =>
    ContactStruct(
      name: name,
      title: title,
      businessUnit: businessUnit,
      location: location,
      notes: notes,
    );
