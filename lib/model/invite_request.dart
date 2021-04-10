//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of userapi;

class InviteRequest {
  /// Returns a new [InviteRequest] instance.
  InviteRequest({
    this.teamId,
    this.code,
  });

  String teamId;

  /// The invite code.
  String code;

  @override
  bool operator ==(Object other) => identical(this, other) || other is InviteRequest &&
     other.teamId == teamId &&
     other.code == code;

  @override
  int get hashCode =>
    (teamId == null ? 0 : teamId.hashCode) +
    (code == null ? 0 : code.hashCode);

  @override
  String toString() => 'InviteRequest[teamId=$teamId, code=$code]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (teamId != null) {
      json[r'teamId'] = teamId;
    }
    if (code != null) {
      json[r'code'] = code;
    }
    return json;
  }

  /// Returns a new [InviteRequest] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static InviteRequest fromJson(Map<String, dynamic> json) => json == null
    ? null
    : InviteRequest(
        teamId: json[r'teamId'],
        code: json[r'code'],
    );

  static List<InviteRequest> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <InviteRequest>[]
      : json.map((v) => InviteRequest.fromJson(v)).toList(growable: true == growable);

  static Map<String, InviteRequest> mapFromJson(Map<String, dynamic> json) {
    final map = <String, InviteRequest>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) => map[key] = InviteRequest.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of InviteRequest-objects as value to a dart map
  static Map<String, List<InviteRequest>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<InviteRequest>>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] = InviteRequest.listFromJson(v, emptyIsNull: emptyIsNull, growable: growable);
      });
    }
    return map;
  }
}

