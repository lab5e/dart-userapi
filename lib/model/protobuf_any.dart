//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of userapi;

class ProtobufAny {
  /// Returns a new [ProtobufAny] instance.
  ProtobufAny({
    this.atType,
  });

  String atType;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ProtobufAny &&
     other.atType == atType;

  @override
  int get hashCode =>
    (atType == null ? 0 : atType.hashCode);

  @override
  String toString() => 'ProtobufAny[atType=$atType]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (atType != null) {
      json[r'@type'] = atType;
    }
    return json;
  }

  /// Returns a new [ProtobufAny] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static ProtobufAny fromJson(Map<String, dynamic> json) => json == null
    ? null
    : ProtobufAny(
        atType: json[r'@type'],
    );

  static List<ProtobufAny> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <ProtobufAny>[]
      : json.map((v) => ProtobufAny.fromJson(v)).toList(growable: true == growable);

  static Map<String, ProtobufAny> mapFromJson(Map<String, dynamic> json) {
    final map = <String, ProtobufAny>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) => map[key] = ProtobufAny.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of ProtobufAny-objects as value to a dart map
  static Map<String, List<ProtobufAny>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<ProtobufAny>>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] = ProtobufAny.listFromJson(v, emptyIsNull: emptyIsNull, growable: growable);
      });
    }
    return map;
  }
}

