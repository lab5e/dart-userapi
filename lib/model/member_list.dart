//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of userapi;

class MemberList {
  /// Returns a new [MemberList] instance.
  MemberList({
    this.members = const [],
  });

  List<Member> members;

  @override
  bool operator ==(Object other) =>
      identical(this, other) || other is MemberList && other.members == members;

  @override
  int get hashCode => (members == null ? 0 : members.hashCode);

  @override
  String toString() => 'MemberList[members=$members]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (members != null) {
      json[r'members'] = members;
    }
    return json;
  }

  /// Returns a new [MemberList] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static MemberList fromJson(Map<String, dynamic> json) => json == null
      ? null
      : MemberList(
          members: Member.listFromJson(json[r'members']),
        );

  static List<MemberList> listFromJson(
    List<dynamic> json, {
    bool emptyIsNull,
    bool growable,
  }) =>
      json == null || json.isEmpty
          ? true == emptyIsNull
              ? null
              : <MemberList>[]
          : json
              .map((v) => MemberList.fromJson(v))
              .toList(growable: true == growable);

  static Map<String, MemberList> mapFromJson(Map<String, dynamic> json) {
    final map = <String, MemberList>{};
    if (json != null && json.isNotEmpty) {
      json.forEach(
          (String key, dynamic v) => map[key] = MemberList.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of MemberList-objects as value to a dart map
  static Map<String, List<MemberList>> mapListFromJson(
    Map<String, dynamic> json, {
    bool emptyIsNull,
    bool growable,
  }) {
    final map = <String, List<MemberList>>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] = MemberList.listFromJson(v,
            emptyIsNull: emptyIsNull, growable: growable);
      });
    }
    return map;
  }
}
