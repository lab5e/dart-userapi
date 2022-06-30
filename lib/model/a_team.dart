//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of userapi;

class ATeam {
  /// Returns a new [ATeam] instance.
  ATeam({
    this.isPrivate,
    this.tags = const {},
    this.members = const [],
  });

  bool isPrivate;

  Map<String, String> tags;

  List<Member> members;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ATeam &&
     other.isPrivate == isPrivate &&
     other.tags == tags &&
     other.members == members;

  @override
  int get hashCode =>
    (isPrivate == null ? 0 : isPrivate.hashCode) +
    (tags == null ? 0 : tags.hashCode) +
    (members == null ? 0 : members.hashCode);

  @override
  String toString() => 'ATeam[isPrivate=$isPrivate, tags=$tags, members=$members]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
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

  /// Returns a new [ATeam] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static ATeam fromJson(Map<String, dynamic> json) => json == null
    ? null
    : ATeam(
        isPrivate: json[r'isPrivate'],
        tags: json[r'tags'] == null ?
          null :
          (json[r'tags'] as Map).cast<String, String>(),
        members: Member.listFromJson(json[r'members']),
    );

  static List<ATeam> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <ATeam>[]
      : json.map((v) => ATeam.fromJson(v)).toList(growable: true == growable);

  static Map<String, ATeam> mapFromJson(Map<String, dynamic> json) {
    final map = <String, ATeam>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) => map[key] = ATeam.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of ATeam-objects as value to a dart map
  static Map<String, List<ATeam>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<ATeam>>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] = ATeam.listFromJson(v, emptyIsNull: emptyIsNull, growable: growable);
      });
    }
    return map;
  }
}

