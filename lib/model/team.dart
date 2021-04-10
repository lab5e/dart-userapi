//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of userapi;

class Team {
  /// Returns a new [Team] instance.
  Team({
    this.teamId,
    this.isPrivate,
    this.tags = const {},
    this.members = const [],
  });

  String teamId;

  bool isPrivate;

  Map<String, String> tags;

  List<Member> members;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Team &&
     other.teamId == teamId &&
     other.isPrivate == isPrivate &&
     other.tags == tags &&
     other.members == members;

  @override
  int get hashCode =>
    (teamId == null ? 0 : teamId.hashCode) +
    (isPrivate == null ? 0 : isPrivate.hashCode) +
    (tags == null ? 0 : tags.hashCode) +
    (members == null ? 0 : members.hashCode);

  @override
  String toString() => 'Team[teamId=$teamId, isPrivate=$isPrivate, tags=$tags, members=$members]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (teamId != null) {
      json[r'teamId'] = teamId;
    }
    if (isPrivate != null) {
      json[r'isPrivate'] = isPrivate;
    }
    if (tags != null) {
      json[r'tags'] = tags;
    }
    if (members != null) {
      json[r'members'] = members;
    }
    return json;
  }

  /// Returns a new [Team] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static Team fromJson(Map<String, dynamic> json) => json == null
    ? null
    : Team(
        teamId: json[r'teamId'],
        isPrivate: json[r'isPrivate'],
        tags: json[r'tags'] == null ?
          null :
          (json[r'tags'] as Map).cast<String, String>(),
        members: Member.listFromJson(json[r'members']),
    );

  static List<Team> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <Team>[]
      : json.map((v) => Team.fromJson(v)).toList(growable: true == growable);

  static Map<String, Team> mapFromJson(Map<String, dynamic> json) {
    final map = <String, Team>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) => map[key] = Team.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of Team-objects as value to a dart map
  static Map<String, List<Team>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<Team>>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] = Team.listFromJson(v, emptyIsNull: emptyIsNull, growable: growable);
      });
    }
    return map;
  }
}

