//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of userapi;

class Invite {
  /// Returns a new [Invite] instance.
  Invite({
    this.code,
    this.createdAt,
  });

  String code;

  /// Time stamp when the invite was generated.
  String createdAt;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Invite && other.code == code && other.createdAt == createdAt;

  @override
  int get hashCode =>
      (code == null ? 0 : code.hashCode) +
      (createdAt == null ? 0 : createdAt.hashCode);

  @override
  String toString() => 'Invite[code=$code, createdAt=$createdAt]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (code != null) {
      json[r'code'] = code;
    }
    if (createdAt != null) {
      json[r'createdAt'] = createdAt;
    }
    return json;
  }

  /// Returns a new [Invite] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static Invite fromJson(Map<String, dynamic> json) => json == null
      ? null
      : Invite(
          code: json[r'code'],
          createdAt: json[r'createdAt'],
        );

  static List<Invite> listFromJson(
    List<dynamic> json, {
    bool emptyIsNull,
    bool growable,
  }) =>
      json == null || json.isEmpty
          ? true == emptyIsNull
              ? null
              : <Invite>[]
          : json
              .map((v) => Invite.fromJson(v))
              .toList(growable: true == growable);

  static Map<String, Invite> mapFromJson(Map<String, dynamic> json) {
    final map = <String, Invite>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) => map[key] = Invite.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of Invite-objects as value to a dart map
  static Map<String, List<Invite>> mapListFromJson(
    Map<String, dynamic> json, {
    bool emptyIsNull,
    bool growable,
  }) {
    final map = <String, List<Invite>>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] = Invite.listFromJson(v,
            emptyIsNull: emptyIsNull, growable: growable);
      });
    }
    return map;
  }
}
