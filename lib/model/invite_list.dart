//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of userapi;

class InviteList {
  /// Returns a new [InviteList] instance.
  InviteList({
    this.invites = const [],
  });

  List<Invite> invites;

  @override
  bool operator ==(Object other) => identical(this, other) || other is InviteList &&
     other.invites == invites;

  @override
  int get hashCode =>
    (invites == null ? 0 : invites.hashCode);

  @override
  String toString() => 'InviteList[invites=$invites]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (invites != null) {
      json[r'invites'] = invites;
    }
    return json;
  }

  /// Returns a new [InviteList] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static InviteList fromJson(Map<String, dynamic> json) => json == null
    ? null
    : InviteList(
        invites: Invite.listFromJson(json[r'invites']),
    );

  static List<InviteList> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <InviteList>[]
      : json.map((v) => InviteList.fromJson(v)).toList(growable: true == growable);

  static Map<String, InviteList> mapFromJson(Map<String, dynamic> json) {
    final map = <String, InviteList>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) => map[key] = InviteList.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of InviteList-objects as value to a dart map
  static Map<String, List<InviteList>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<InviteList>>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] = InviteList.listFromJson(v, emptyIsNull: emptyIsNull, growable: growable);
      });
    }
    return map;
  }
}

