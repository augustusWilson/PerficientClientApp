// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class UserStruct extends BaseStruct {
  UserStruct({
    String? name,
    String? title,
    String? businessUnit,
    String? location,
    String? email,
  })  : _name = name,
        _title = title,
        _businessUnit = businessUnit,
        _location = location,
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

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  set email(String? val) => _email = val;
  bool hasEmail() => _email != null;

  static UserStruct fromMap(Map<String, dynamic> data) => UserStruct(
        name: data['name'] as String?,
        title: data['title'] as String?,
        businessUnit: data['businessUnit'] as String?,
        location: data['location'] as String?,
        email: data['email'] as String?,
      );

  static UserStruct? maybeFromMap(dynamic data) =>
      data is Map ? UserStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'name': _name,
        'title': _title,
        'businessUnit': _businessUnit,
        'location': _location,
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
        'email': serializeParam(
          _email,
          ParamType.String,
        ),
      }.withoutNulls;

  static UserStruct fromSerializableMap(Map<String, dynamic> data) =>
      UserStruct(
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
        email: deserializeParam(
          data['email'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'UserStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is UserStruct &&
        name == other.name &&
        title == other.title &&
        businessUnit == other.businessUnit &&
        location == other.location &&
        email == other.email;
  }

  @override
  int get hashCode =>
      const ListEquality().hash([name, title, businessUnit, location, email]);
}

UserStruct createUserStruct({
  String? name,
  String? title,
  String? businessUnit,
  String? location,
  String? email,
}) =>
    UserStruct(
      name: name,
      title: title,
      businessUnit: businessUnit,
      location: location,
      email: email,
    );
