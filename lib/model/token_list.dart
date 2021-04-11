//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of userapi;

class TokenList {
  /// Returns a new [TokenList] instance.
  TokenList({
    this.tokens = const [],
  });

  List<Token> tokens;

  @override
  bool operator ==(Object other) => identical(this, other) || other is TokenList &&
     other.tokens == tokens;

  @override
  int get hashCode =>
    (tokens == null ? 0 : tokens.hashCode);

  @override
  String toString() => 'TokenList[tokens=$tokens]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (tokens != null) {
      json[r'tokens'] = tokens;
    }
    return json;
  }

  /// Returns a new [TokenList] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static TokenList fromJson(Map<String, dynamic> json) => json == null
    ? null
    : TokenList(
        tokens: Token.listFromJson(json[r'tokens']),
    );

  static List<TokenList> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <TokenList>[]
      : json.map((v) => TokenList.fromJson(v)).toList(growable: true == growable);

  static Map<String, TokenList> mapFromJson(Map<String, dynamic> json) {
    final map = <String, TokenList>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) => map[key] = TokenList.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of TokenList-objects as value to a dart map
  static Map<String, List<TokenList>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<TokenList>>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] = TokenList.listFromJson(v, emptyIsNull: emptyIsNull, growable: growable);
      });
    }
    return map;
  }
}

