//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of userapi;

class MemberOfATeam {
  /// Returns a new [MemberOfATeam] instance.
  MemberOfATeam({
    this.role,
    this.user,
  });

  String role;

  UserProfile user;

  @override
  bool operator ==(Object other) => identical(this, other) || other is MemberOfATeam &&
     other.role == role &&
     other.user == user;

  @override
  int get hashCode =>
    (role == null ? 0 : role.hashCode) +
    (user == null ? 0 : user.hashCode);

  @override
  String toString() => 'MemberOfATeam[role=$role, user=$user]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (role != null) {
      json[r'role'] = role;
    }
    if (user != null) {
      json[r'user'] = user;
    }
    return json;
  }

  /// Returns a new [MemberOfATeam] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static MemberOfATeam fromJson(Map<String, dynamic> json) => json == null
    ? null
    : MemberOfATeam(
        role: json[r'role'],
        user: UserProfile.fromJson(json[r'user']),
    );

  static List<MemberOfATeam> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <MemberOfATeam>[]
      : json.map((v) => MemberOfATeam.fromJson(v)).toList(growable: true == growable);

  static Map<String, MemberOfATeam> mapFromJson(Map<String, dynamic> json) {
    final map = <String, MemberOfATeam>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) => map[key] = MemberOfATeam.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of MemberOfATeam-objects as value to a dart map
  static Map<String, List<MemberOfATeam>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<MemberOfATeam>>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] = MemberOfATeam.listFromJson(v, emptyIsNull: emptyIsNull, growable: growable);
      });
    }
    return map;
  }
}

