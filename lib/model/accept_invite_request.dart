//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of userapi;

class AcceptInviteRequest {
  /// Returns a new [AcceptInviteRequest] instance.
  AcceptInviteRequest({
    this.code,
  });

  /// The invite code to use.
  String code;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is AcceptInviteRequest && other.code == code;

  @override
  int get hashCode => (code == null ? 0 : code.hashCode);

  @override
  String toString() => 'AcceptInviteRequest[code=$code]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (code != null) {
      json[r'code'] = code;
    }
    return json;
  }

  /// Returns a new [AcceptInviteRequest] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static AcceptInviteRequest fromJson(Map<String, dynamic> json) => json == null
      ? null
      : AcceptInviteRequest(
          code: json[r'code'],
        );

  static List<AcceptInviteRequest> listFromJson(
    List<dynamic> json, {
    bool emptyIsNull,
    bool growable,
  }) =>
      json == null || json.isEmpty
          ? true == emptyIsNull
              ? null
              : <AcceptInviteRequest>[]
          : json
              .map((v) => AcceptInviteRequest.fromJson(v))
              .toList(growable: true == growable);

  static Map<String, AcceptInviteRequest> mapFromJson(
      Map<String, dynamic> json) {
    final map = <String, AcceptInviteRequest>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) =>
          map[key] = AcceptInviteRequest.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of AcceptInviteRequest-objects as value to a dart map
  static Map<String, List<AcceptInviteRequest>> mapListFromJson(
    Map<String, dynamic> json, {
    bool emptyIsNull,
    bool growable,
  }) {
    final map = <String, List<AcceptInviteRequest>>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] = AcceptInviteRequest.listFromJson(v,
            emptyIsNull: emptyIsNull, growable: growable);
      });
    }
    return map;
  }
}
