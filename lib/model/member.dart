//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of userapi;

class Member {
  /// Returns a new [Member] instance.
  Member({
    this.teamId,
    this.role,
    this.userId,
    this.user,
  });

  String teamId;

  String role;

  String userId;

  UserProfile user;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Member &&
     other.teamId == teamId &&
     other.role == role &&
     other.userId == userId &&
     other.user == user;

  @override
  int get hashCode =>
    (teamId == null ? 0 : teamId.hashCode) +
    (role == null ? 0 : role.hashCode) +
    (userId == null ? 0 : userId.hashCode) +
    (user == null ? 0 : user.hashCode);

  @override
  String toString() => 'Member[teamId=$teamId, role=$role, userId=$userId, user=$user]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (teamId != null) {
      json[r'teamId'] = teamId;
    }
    if (role != null) {
      json[r'role'] = role;
    }
    if (userId != null) {
      json[r'userId'] = userId;
    }
    if (user != null) {
      json[r'user'] = user;
    }
    return json;
  }

  /// Returns a new [Member] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static Member fromJson(Map<String, dynamic> json) => json == null
    ? null
    : Member(
        teamId: json[r'teamId'],
        role: json[r'role'],
        userId: json[r'userId'],
        user: UserProfile.fromJson(json[r'user']),
    );

  static List<Member> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <Member>[]
      : json.map((v) => Member.fromJson(v)).toList(growable: true == growable);

  static Map<String, Member> mapFromJson(Map<String, dynamic> json) {
    final map = <String, Member>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) => map[key] = Member.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of Member-objects as value to a dart map
  static Map<String, List<Member>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<Member>>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] = Member.listFromJson(v, emptyIsNull: emptyIsNull, growable: growable);
      });
    }
    return map;
  }
}

