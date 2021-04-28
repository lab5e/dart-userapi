//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of userapi;

class DeleteTokenResponse {
  /// Returns a new [DeleteTokenResponse] instance.
  DeleteTokenResponse({
    this.token,
  });

  Token token;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is DeleteTokenResponse && other.token == token;

  @override
  int get hashCode => (token == null ? 0 : token.hashCode);

  @override
  String toString() => 'DeleteTokenResponse[token=$token]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (token != null) {
      json[r'token'] = token;
    }
    return json;
  }

  /// Returns a new [DeleteTokenResponse] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static DeleteTokenResponse fromJson(Map<String, dynamic> json) => json == null
      ? null
      : DeleteTokenResponse(
          token: Token.fromJson(json[r'token']),
        );

  static List<DeleteTokenResponse> listFromJson(
    List<dynamic> json, {
    bool emptyIsNull,
    bool growable,
  }) =>
      json == null || json.isEmpty
          ? true == emptyIsNull
              ? null
              : <DeleteTokenResponse>[]
          : json
              .map((v) => DeleteTokenResponse.fromJson(v))
              .toList(growable: true == growable);

  static Map<String, DeleteTokenResponse> mapFromJson(
      Map<String, dynamic> json) {
    final map = <String, DeleteTokenResponse>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) =>
          map[key] = DeleteTokenResponse.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of DeleteTokenResponse-objects as value to a dart map
  static Map<String, List<DeleteTokenResponse>> mapListFromJson(
    Map<String, dynamic> json, {
    bool emptyIsNull,
    bool growable,
  }) {
    final map = <String, List<DeleteTokenResponse>>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] = DeleteTokenResponse.listFromJson(v,
            emptyIsNull: emptyIsNull, growable: growable);
      });
    }
    return map;
  }
}
