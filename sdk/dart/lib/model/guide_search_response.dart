//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class GuideSearchResponse {
  /// Returns a new [GuideSearchResponse] instance.
  GuideSearchResponse({
    this.data = const [],
    required this.paging,
    this.score = const [],
  });

  List<Guide> data;

  Paging paging;

  /// 与 data 同顺序的相似度分数
  List<double> score;

  @override
  bool operator ==(Object other) => identical(this, other) || other is GuideSearchResponse &&
    _deepEquality.equals(other.data, data) &&
    other.paging == paging &&
    _deepEquality.equals(other.score, score);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (data.hashCode) +
    (paging.hashCode) +
    (score.hashCode);

  @override
  String toString() => 'GuideSearchResponse[data=$data, paging=$paging, score=$score]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'data'] = this.data;
      json[r'paging'] = this.paging;
      json[r'score'] = this.score;
    return json;
  }

  /// Returns a new [GuideSearchResponse] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static GuideSearchResponse? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "GuideSearchResponse[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "GuideSearchResponse[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return GuideSearchResponse(
        data: Guide.listFromJson(json[r'data']),
        paging: Paging.fromJson(json[r'paging'])!,
        score: json[r'score'] is Iterable
            ? (json[r'score'] as Iterable).cast<double>().toList(growable: false)
            : const [],
      );
    }
    return null;
  }

  static List<GuideSearchResponse> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <GuideSearchResponse>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = GuideSearchResponse.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, GuideSearchResponse> mapFromJson(dynamic json) {
    final map = <String, GuideSearchResponse>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = GuideSearchResponse.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of GuideSearchResponse-objects as value to a dart map
  static Map<String, List<GuideSearchResponse>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<GuideSearchResponse>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = GuideSearchResponse.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'data',
    'paging',
    'score',
  };
}

