//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of userapi;

class Token {
  /// Returns a new [Token] instance.
  Token({
    this.resource,
    this.write,
    this.token,
    this.tags = const {},
    this.lastUse,
    this.uses,
  });

  /// The resource of the token.  The token applies to the specified resource and any resources below this so the resource `/` applies to the root resource and any resource below the root resource. In the same manner `/collections` will apply to all collectins while `/collections/{id}` will apply to that particular collection.
  String resource;

  /// Write flag for token.  If this is set to `true` the token can be used for write operations in the API such as POST, DELETE and PATCH.
  bool write;

  /// Use this in the `X-API-Token` header when using the API.
  String token;

  /// Tags for the token.
  Map<String, String> tags;

  /// The last time the token was used. Time in ms since epoch.
  String lastUse;

  String uses;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Token &&
          other.resource == resource &&
          other.write == write &&
          other.token == token &&
          other.tags == tags &&
          other.lastUse == lastUse &&
          other.uses == uses;

  @override
  int get hashCode =>
      (resource == null ? 0 : resource.hashCode) +
      (write == null ? 0 : write.hashCode) +
      (token == null ? 0 : token.hashCode) +
      (tags == null ? 0 : tags.hashCode) +
      (lastUse == null ? 0 : lastUse.hashCode) +
      (uses == null ? 0 : uses.hashCode);

  @override
  String toString() =>
      'Token[resource=$resource, write=$write, token=$token, tags=$tags, lastUse=$lastUse, uses=$uses]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (resource != null) {
      json[r'resource'] = resource;
    }
    if (write != null) {
      json[r'write'] = write;
    }
    if (token != null) {
      json[r'token'] = token;
    }
    if (tags != null) {
      json[r'tags'] = tags;
    }
    if (lastUse != null) {
      json[r'lastUse'] = lastUse;
    }
    if (uses != null) {
      json[r'uses'] = uses;
    }
    return json;
  }

  /// Returns a new [Token] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static Token fromJson(Map<String, dynamic> json) => json == null
      ? null
      : Token(
          resource: json[r'resource'],
          write: json[r'write'],
          token: json[r'token'],
          tags: json[r'tags'] == null
              ? null
              : (json[r'tags'] as Map).cast<String, String>(),
          lastUse: json[r'lastUse'],
          uses: json[r'uses'],
        );

  static List<Token> listFromJson(
    List<dynamic> json, {
    bool emptyIsNull,
    bool growable,
  }) =>
      json == null || json.isEmpty
          ? true == emptyIsNull
              ? null
              : <Token>[]
          : json
              .map((v) => Token.fromJson(v))
              .toList(growable: true == growable);

  static Map<String, Token> mapFromJson(Map<String, dynamic> json) {
    final map = <String, Token>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) => map[key] = Token.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of Token-objects as value to a dart map
  static Map<String, List<Token>> mapListFromJson(
    Map<String, dynamic> json, {
    bool emptyIsNull,
    bool growable,
  }) {
    final map = <String, List<Token>>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] =
            Token.listFromJson(v, emptyIsNull: emptyIsNull, growable: growable);
      });
    }
    return map;
  }
}
