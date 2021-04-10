//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of userapi;

class TeamList {
  /// Returns a new [TeamList] instance.
  TeamList({
    this.teams = const [],
  });

  List<Team> teams;

  @override
  bool operator ==(Object other) => identical(this, other) || other is TeamList &&
     other.teams == teams;

  @override
  int get hashCode =>
    (teams == null ? 0 : teams.hashCode);

  @override
  String toString() => 'TeamList[teams=$teams]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (teams != null) {
      json[r'teams'] = teams;
    }
    return json;
  }

  /// Returns a new [TeamList] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static TeamList fromJson(Map<String, dynamic> json) => json == null
    ? null
    : TeamList(
        teams: Team.listFromJson(json[r'teams']),
    );

  static List<TeamList> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <TeamList>[]
      : json.map((v) => TeamList.fromJson(v)).toList(growable: true == growable);

  static Map<String, TeamList> mapFromJson(Map<String, dynamic> json) {
    final map = <String, TeamList>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) => map[key] = TeamList.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of TeamList-objects as value to a dart map
  static Map<String, List<TeamList>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<TeamList>>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] = TeamList.listFromJson(v, emptyIsNull: emptyIsNull, growable: growable);
      });
    }
    return map;
  }
}

