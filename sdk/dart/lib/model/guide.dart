//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class Guide {
  /// Returns a new [Guide] instance.
  Guide({
    required this.id,
    required this.packageName,
    required this.vector,
    required this.action,
    required this.description,
    required this.tokens,
    required this.source_,
    required this.solution,
  });

  int id;

  String packageName;

  Object? vector;

  String action;

  String description;

  int tokens;

  String source_;

  String solution;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Guide &&
    other.id == id &&
    other.packageName == packageName &&
    other.vector == vector &&
    other.action == action &&
    other.description == description &&
    other.tokens == tokens &&
    other.source_ == source_ &&
    other.solution == solution;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id.hashCode) +
    (packageName.hashCode) +
    (vector == null ? 0 : vector!.hashCode) +
    (action.hashCode) +
    (description.hashCode) +
    (tokens.hashCode) +
    (source_.hashCode) +
    (solution.hashCode);

  @override
  String toString() => 'Guide[id=$id, packageName=$packageName, vector=$vector, action=$action, description=$description, tokens=$tokens, source_=$source_, solution=$solution]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'id'] = this.id;
      json[r'packageName'] = this.packageName;
    if (this.vector != null) {
      json[r'vector'] = this.vector;
    } else {
      json[r'vector'] = null;
    }
      json[r'action'] = this.action;
      json[r'description'] = this.description;
      json[r'tokens'] = this.tokens;
      json[r'source'] = this.source_;
      json[r'solution'] = this.solution;
    return json;
  }

  /// Returns a new [Guide] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Guide? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "Guide[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "Guide[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return Guide(
        id: mapValueOfType<int>(json, r'id')!,
        packageName: mapValueOfType<String>(json, r'packageName')!,
        vector: mapValueOfType<Object>(json, r'vector'),
        action: mapValueOfType<String>(json, r'action')!,
        description: mapValueOfType<String>(json, r'description')!,
        tokens: mapValueOfType<int>(json, r'tokens')!,
        source_: mapValueOfType<String>(json, r'source')!,
        solution: mapValueOfType<String>(json, r'solution')!,
      );
    }
    return null;
  }

  static List<Guide> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <Guide>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = Guide.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, Guide> mapFromJson(dynamic json) {
    final map = <String, Guide>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = Guide.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of Guide-objects as value to a dart map
  static Map<String, List<Guide>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<Guide>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = Guide.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'id',
    'packageName',
    'vector',
    'action',
    'description',
    'tokens',
    'source',
    'solution',
  };
}

