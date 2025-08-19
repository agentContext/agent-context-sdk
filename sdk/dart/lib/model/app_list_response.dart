//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class AppListResponse {
  /// Returns a new [AppListResponse] instance.
  AppListResponse({
    this.data = const [],
    required this.paging,
  });

  List<App> data;

  Paging paging;

  @override
  bool operator ==(Object other) => identical(this, other) || other is AppListResponse &&
    _deepEquality.equals(other.data, data) &&
    other.paging == paging;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (data.hashCode) +
    (paging.hashCode);

  @override
  String toString() => 'AppListResponse[data=$data, paging=$paging]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'data'] = this.data;
      json[r'paging'] = this.paging;
    return json;
  }

  /// Returns a new [AppListResponse] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static AppListResponse? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "AppListResponse[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "AppListResponse[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return AppListResponse(
        data: App.listFromJson(json[r'data']),
        paging: Paging.fromJson(json[r'paging'])!,
      );
    }
    return null;
  }

  static List<AppListResponse> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <AppListResponse>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = AppListResponse.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, AppListResponse> mapFromJson(dynamic json) {
    final map = <String, AppListResponse>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = AppListResponse.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of AppListResponse-objects as value to a dart map
  static Map<String, List<AppListResponse>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<AppListResponse>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = AppListResponse.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'data',
    'paging',
  };
}

