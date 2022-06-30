//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of userapi;

class RequestInviteDetails {
  /// Returns a new [RequestInviteDetails] instance.
  RequestInviteDetails({
    this.code,
  });

  /// The invite code.
  String code;

  @override
  bool operator ==(Object other) => identical(this, other) || other is RequestInviteDetails &&
     other.code == code;

  @override
  int get hashCode =>
    (code == null ? 0 : code.hashCode);

  @override
  String toString() => 'RequestInviteDetails[code=$code]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (code != null) {
      json[r'code'] = code;
    }
    return json;
  }

  /// Returns a new [RequestInviteDetails] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static RequestInviteDetails fromJson(Map<String, dynamic> json) => json == null
    ? null
    : RequestInviteDetails(
        code: json[r'code'],
    );

  static List<RequestInviteDetails> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <RequestInviteDetails>[]
      : json.map((v) => RequestInviteDetails.fromJson(v)).toList(growable: true == growable);

  static Map<String, RequestInviteDetails> mapFromJson(Map<String, dynamic> json) {
    final map = <String, RequestInviteDetails>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) => map[key] = RequestInviteDetails.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of RequestInviteDetails-objects as value to a dart map
  static Map<String, List<RequestInviteDetails>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<RequestInviteDetails>>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] = RequestInviteDetails.listFromJson(v, emptyIsNull: emptyIsNull, growable: growable);
      });
    }
    return map;
  }
}

