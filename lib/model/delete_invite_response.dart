//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of userapi;

class DeleteInviteResponse {
  /// Returns a new [DeleteInviteResponse] instance.
  DeleteInviteResponse({
    this.invite,
  });

  Invite invite;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is DeleteInviteResponse && other.invite == invite;

  @override
  int get hashCode => (invite == null ? 0 : invite.hashCode);

  @override
  String toString() => 'DeleteInviteResponse[invite=$invite]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (invite != null) {
      json[r'invite'] = invite;
    }
    return json;
  }

  /// Returns a new [DeleteInviteResponse] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static DeleteInviteResponse fromJson(Map<String, dynamic> json) =>
      json == null
          ? null
          : DeleteInviteResponse(
              invite: Invite.fromJson(json[r'invite']),
            );

  static List<DeleteInviteResponse> listFromJson(
    List<dynamic> json, {
    bool emptyIsNull,
    bool growable,
  }) =>
      json == null || json.isEmpty
          ? true == emptyIsNull
              ? null
              : <DeleteInviteResponse>[]
          : json
              .map((v) => DeleteInviteResponse.fromJson(v))
              .toList(growable: true == growable);

  static Map<String, DeleteInviteResponse> mapFromJson(
      Map<String, dynamic> json) {
    final map = <String, DeleteInviteResponse>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) =>
          map[key] = DeleteInviteResponse.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of DeleteInviteResponse-objects as value to a dart map
  static Map<String, List<DeleteInviteResponse>> mapListFromJson(
    Map<String, dynamic> json, {
    bool emptyIsNull,
    bool growable,
  }) {
    final map = <String, List<DeleteInviteResponse>>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] = DeleteInviteResponse.listFromJson(v,
            emptyIsNull: emptyIsNull, growable: growable);
      });
    }
    return map;
  }
}
