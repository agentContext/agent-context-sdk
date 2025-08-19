//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class App {
  /// Returns a new [App] instance.
  App({
    required this.id,
    required this.appName,
    required this.packageName,
    required this.description,
    required this.tokdens,
    required this.createAt,
    required this.updateAt,
  });

  int id;

  String appName;

  String packageName;

  String description;

  int tokdens;

  DateTime createAt;

  DateTime updateAt;

  @override
  bool operator ==(Object other) => identical(this, other) || other is App &&
    other.id == id &&
    other.appName == appName &&
    other.packageName == packageName &&
    other.description == description &&
    other.tokdens == tokdens &&
    other.createAt == createAt &&
    other.updateAt == updateAt;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id.hashCode) +
    (appName.hashCode) +
    (packageName.hashCode) +
    (description.hashCode) +
    (tokdens.hashCode) +
    (createAt.hashCode) +
    (updateAt.hashCode);

  @override
  String toString() => 'App[id=$id, appName=$appName, packageName=$packageName, description=$description, tokdens=$tokdens, createAt=$createAt, updateAt=$updateAt]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'Id'] = this.id;
      json[r'AppName'] = this.appName;
      json[r'PackageName'] = this.packageName;
      json[r'Description'] = this.description;
      json[r'Tokdens'] = this.tokdens;
      json[r'CreateAt'] = this.createAt.toUtc().toIso8601String();
      json[r'UpdateAt'] = this.updateAt.toUtc().toIso8601String();
    return json;
  }

  /// Returns a new [App] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static App? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "App[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "App[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return App(
        id: mapValueOfType<int>(json, r'Id')!,
        appName: mapValueOfType<String>(json, r'AppName')!,
        packageName: mapValueOfType<String>(json, r'PackageName')!,
        description: mapValueOfType<String>(json, r'Description')!,
        tokdens: mapValueOfType<int>(json, r'Tokdens')!,
        createAt: mapDateTime(json, r'CreateAt', r'')!,
        updateAt: mapDateTime(json, r'UpdateAt', r'')!,
      );
    }
    return null;
  }

  static List<App> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <App>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = App.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, App> mapFromJson(dynamic json) {
    final map = <String, App>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = App.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of App-objects as value to a dart map
  static Map<String, List<App>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<App>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = App.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'Id',
    'AppName',
    'PackageName',
    'Description',
    'Tokdens',
    'CreateAt',
    'UpdateAt',
  };
}

