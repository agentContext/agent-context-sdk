//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class Paging {
  /// Returns a new [Paging] instance.
  Paging({
    required this.limit,
    required this.page,
    required this.total,
    this.kw,
  });

  int limit;

  int page;

  int total;

  /// 可选，搜索关键词回显
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? kw;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Paging &&
    other.limit == limit &&
    other.page == page &&
    other.total == total &&
    other.kw == kw;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (limit.hashCode) +
    (page.hashCode) +
    (total.hashCode) +
    (kw == null ? 0 : kw!.hashCode);

  @override
  String toString() => 'Paging[limit=$limit, page=$page, total=$total, kw=$kw]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'limit'] = this.limit;
      json[r'page'] = this.page;
      json[r'total'] = this.total;
    if (this.kw != null) {
      json[r'kw'] = this.kw;
    } else {
      json[r'kw'] = null;
    }
    return json;
  }

  /// Returns a new [Paging] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Paging? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "Paging[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "Paging[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return Paging(
        limit: mapValueOfType<int>(json, r'limit')!,
        page: mapValueOfType<int>(json, r'page')!,
        total: mapValueOfType<int>(json, r'total')!,
        kw: mapValueOfType<String>(json, r'kw'),
      );
    }
    return null;
  }

  static List<Paging> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <Paging>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = Paging.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, Paging> mapFromJson(dynamic json) {
    final map = <String, Paging>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = Paging.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of Paging-objects as value to a dart map
  static Map<String, List<Paging>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<Paging>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = Paging.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'limit',
    'page',
    'total',
  };
}

