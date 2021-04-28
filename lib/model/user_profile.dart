//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of userapi;

class UserProfile {
  /// Returns a new [UserProfile] instance.
  UserProfile({
    this.userId,
    this.email,
    this.avatarUrl,
    this.name,
    this.profileUrl,
    this.githubLogin,
    this.provider,
    this.logoutUrl,
  });

  String userId;

  String email;

  String avatarUrl;

  String name;

  String profileUrl;

  String githubLogin;

  String provider;

  String logoutUrl;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is UserProfile &&
          other.userId == userId &&
          other.email == email &&
          other.avatarUrl == avatarUrl &&
          other.name == name &&
          other.profileUrl == profileUrl &&
          other.githubLogin == githubLogin &&
          other.provider == provider &&
          other.logoutUrl == logoutUrl;

  @override
  int get hashCode =>
      (userId == null ? 0 : userId.hashCode) +
      (email == null ? 0 : email.hashCode) +
      (avatarUrl == null ? 0 : avatarUrl.hashCode) +
      (name == null ? 0 : name.hashCode) +
      (profileUrl == null ? 0 : profileUrl.hashCode) +
      (githubLogin == null ? 0 : githubLogin.hashCode) +
      (provider == null ? 0 : provider.hashCode) +
      (logoutUrl == null ? 0 : logoutUrl.hashCode);

  @override
  String toString() =>
      'UserProfile[userId=$userId, email=$email, avatarUrl=$avatarUrl, name=$name, profileUrl=$profileUrl, githubLogin=$githubLogin, provider=$provider, logoutUrl=$logoutUrl]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (userId != null) {
      json[r'userId'] = userId;
    }
    if (email != null) {
      json[r'email'] = email;
    }
    if (avatarUrl != null) {
      json[r'avatarUrl'] = avatarUrl;
    }
    if (name != null) {
      json[r'name'] = name;
    }
    if (profileUrl != null) {
      json[r'profileUrl'] = profileUrl;
    }
    if (githubLogin != null) {
      json[r'githubLogin'] = githubLogin;
    }
    if (provider != null) {
      json[r'provider'] = provider;
    }
    if (logoutUrl != null) {
      json[r'logoutUrl'] = logoutUrl;
    }
    return json;
  }

  /// Returns a new [UserProfile] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static UserProfile fromJson(Map<String, dynamic> json) => json == null
      ? null
      : UserProfile(
          userId: json[r'userId'],
          email: json[r'email'],
          avatarUrl: json[r'avatarUrl'],
          name: json[r'name'],
          profileUrl: json[r'profileUrl'],
          githubLogin: json[r'githubLogin'],
          provider: json[r'provider'],
          logoutUrl: json[r'logoutUrl'],
        );

  static List<UserProfile> listFromJson(
    List<dynamic> json, {
    bool emptyIsNull,
    bool growable,
  }) =>
      json == null || json.isEmpty
          ? true == emptyIsNull
              ? null
              : <UserProfile>[]
          : json
              .map((v) => UserProfile.fromJson(v))
              .toList(growable: true == growable);

  static Map<String, UserProfile> mapFromJson(Map<String, dynamic> json) {
    final map = <String, UserProfile>{};
    if (json != null && json.isNotEmpty) {
      json.forEach(
          (String key, dynamic v) => map[key] = UserProfile.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of UserProfile-objects as value to a dart map
  static Map<String, List<UserProfile>> mapListFromJson(
    Map<String, dynamic> json, {
    bool emptyIsNull,
    bool growable,
  }) {
    final map = <String, List<UserProfile>>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] = UserProfile.listFromJson(v,
            emptyIsNull: emptyIsNull, growable: growable);
      });
    }
    return map;
  }
}
