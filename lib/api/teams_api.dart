//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of userapi;

class TeamsApi {
  TeamsApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Accept invite
  ///
  /// Accept an invite from another user. This will add the currently logged in user to the team as a regular memeber. When the invite is accepted it is removed from the team's invites and cannot be reused.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [AcceptInviteRequest] body (required):
  Future<Response> userAcceptInviteWithHttpInfo(
      AcceptInviteRequest body) async {
    // Verify required params are set.
    if (body == null) {
      throw ApiException(HttpStatus.badRequest, 'Missing required param: body');
    }

    final path = r'/user/teams/accept';

    Object postBody = body;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    final contentTypes = <String>['application/json'];
    final nullableContentType =
        contentTypes.isNotEmpty ? contentTypes[0] : null;
    final authNames = <String>['APIToken'];

    if (nullableContentType != null &&
        nullableContentType.toLowerCase().startsWith('multipart/form-data')) {
      bool hasFields = false;
      final mp = MultipartRequest(null, null);
      if (hasFields) {
        postBody = mp;
      }
    } else {}

    return await apiClient.invokeAPI(
      path,
      'POST',
      queryParams,
      postBody,
      headerParams,
      formParams,
      nullableContentType,
      authNames,
    );
  }

  /// Accept invite
  ///
  /// Accept an invite from another user. This will add the currently logged in user to the team as a regular memeber. When the invite is accepted it is removed from the team's invites and cannot be reused.
  ///
  /// Parameters:
  ///
  /// * [AcceptInviteRequest] body (required):
  Future<Team> userAcceptInvite(AcceptInviteRequest body) async {
    final response = await userAcceptInviteWithHttpInfo(body);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return apiClient.deserialize(_decodeBodyBytes(response), 'Team') as Team;
    }
    return Future<Team>.value(null);
  }

  /// Create team
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [Team] body (required):
  Future<Response> userCreateTeamWithHttpInfo(Team body) async {
    // Verify required params are set.
    if (body == null) {
      throw ApiException(HttpStatus.badRequest, 'Missing required param: body');
    }

    final path = r'/user/teams';

    Object postBody = body;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    final contentTypes = <String>['application/json'];
    final nullableContentType =
        contentTypes.isNotEmpty ? contentTypes[0] : null;
    final authNames = <String>['APIToken'];

    if (nullableContentType != null &&
        nullableContentType.toLowerCase().startsWith('multipart/form-data')) {
      bool hasFields = false;
      final mp = MultipartRequest(null, null);
      if (hasFields) {
        postBody = mp;
      }
    } else {}

    return await apiClient.invokeAPI(
      path,
      'POST',
      queryParams,
      postBody,
      headerParams,
      formParams,
      nullableContentType,
      authNames,
    );
  }

  /// Create team
  ///
  /// Parameters:
  ///
  /// * [Team] body (required):
  Future<Team> userCreateTeam(Team body) async {
    final response = await userCreateTeamWithHttpInfo(body);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return apiClient.deserialize(_decodeBodyBytes(response), 'Team') as Team;
    }
    return Future<Team>.value(null);
  }

  /// Delete invite
  ///
  /// Delete an invite created earlier. You must be an administrator of the team to perform this action
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] teamId (required):
  ///   The team ID
  ///
  /// * [String] code (required):
  ///   The invite code.
  Future<Response> userDeleteInviteWithHttpInfo(
      String teamId, String code) async {
    // Verify required params are set.
    if (teamId == null) {
      throw ApiException(
          HttpStatus.badRequest, 'Missing required param: teamId');
    }
    if (code == null) {
      throw ApiException(HttpStatus.badRequest, 'Missing required param: code');
    }

    final path = r'/user/teams/{teamId}/invites/{code}'
        .replaceAll('{' + 'teamId' + '}', teamId.toString())
        .replaceAll('{' + 'code' + '}', code.toString());

    Object postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    final contentTypes = <String>[];
    final nullableContentType =
        contentTypes.isNotEmpty ? contentTypes[0] : null;
    final authNames = <String>['APIToken'];

    if (nullableContentType != null &&
        nullableContentType.toLowerCase().startsWith('multipart/form-data')) {
      bool hasFields = false;
      final mp = MultipartRequest(null, null);
      if (hasFields) {
        postBody = mp;
      }
    } else {}

    return await apiClient.invokeAPI(
      path,
      'DELETE',
      queryParams,
      postBody,
      headerParams,
      formParams,
      nullableContentType,
      authNames,
    );
  }

  /// Delete invite
  ///
  /// Delete an invite created earlier. You must be an administrator of the team to perform this action
  ///
  /// Parameters:
  ///
  /// * [String] teamId (required):
  ///   The team ID
  ///
  /// * [String] code (required):
  ///   The invite code.
  Future<Object> userDeleteInvite(String teamId, String code) async {
    final response = await userDeleteInviteWithHttpInfo(teamId, code);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return apiClient.deserialize(_decodeBodyBytes(response), 'Object')
          as Object;
    }
    return Future<Object>.value(null);
  }

  /// Remove member
  ///
  /// Remove a member from the team. You must be an administrator to do this. You can't remove yourself from the team.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] teamId (required):
  ///   The team ID
  ///
  /// * [String] userId (required):
  ///   The user ID
  Future<Response> userDeleteMemberWithHttpInfo(
      String teamId, String userId) async {
    // Verify required params are set.
    if (teamId == null) {
      throw ApiException(
          HttpStatus.badRequest, 'Missing required param: teamId');
    }
    if (userId == null) {
      throw ApiException(
          HttpStatus.badRequest, 'Missing required param: userId');
    }

    final path = r'/user/teams/{teamId}/members/{userId}'
        .replaceAll('{' + 'teamId' + '}', teamId.toString())
        .replaceAll('{' + 'userId' + '}', userId.toString());

    Object postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    final contentTypes = <String>[];
    final nullableContentType =
        contentTypes.isNotEmpty ? contentTypes[0] : null;
    final authNames = <String>['APIToken'];

    if (nullableContentType != null &&
        nullableContentType.toLowerCase().startsWith('multipart/form-data')) {
      bool hasFields = false;
      final mp = MultipartRequest(null, null);
      if (hasFields) {
        postBody = mp;
      }
    } else {}

    return await apiClient.invokeAPI(
      path,
      'DELETE',
      queryParams,
      postBody,
      headerParams,
      formParams,
      nullableContentType,
      authNames,
    );
  }

  /// Remove member
  ///
  /// Remove a member from the team. You must be an administrator to do this. You can't remove yourself from the team.
  ///
  /// Parameters:
  ///
  /// * [String] teamId (required):
  ///   The team ID
  ///
  /// * [String] userId (required):
  ///   The user ID
  Future<Member> userDeleteMember(String teamId, String userId) async {
    final response = await userDeleteMemberWithHttpInfo(teamId, userId);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return apiClient.deserialize(_decodeBodyBytes(response), 'Member')
          as Member;
    }
    return Future<Member>.value(null);
  }

  /// Remove team
  ///
  /// Update the team. You must be an administrator of the team to edit it.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] teamId (required):
  ///   The team ID
  Future<Response> userDeleteTeamWithHttpInfo(String teamId) async {
    // Verify required params are set.
    if (teamId == null) {
      throw ApiException(
          HttpStatus.badRequest, 'Missing required param: teamId');
    }

    final path = r'/user/teams/{teamId}'
        .replaceAll('{' + 'teamId' + '}', teamId.toString());

    Object postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    final contentTypes = <String>[];
    final nullableContentType =
        contentTypes.isNotEmpty ? contentTypes[0] : null;
    final authNames = <String>['APIToken'];

    if (nullableContentType != null &&
        nullableContentType.toLowerCase().startsWith('multipart/form-data')) {
      bool hasFields = false;
      final mp = MultipartRequest(null, null);
      if (hasFields) {
        postBody = mp;
      }
    } else {}

    return await apiClient.invokeAPI(
      path,
      'DELETE',
      queryParams,
      postBody,
      headerParams,
      formParams,
      nullableContentType,
      authNames,
    );
  }

  /// Remove team
  ///
  /// Update the team. You must be an administrator of the team to edit it.
  ///
  /// Parameters:
  ///
  /// * [String] teamId (required):
  ///   The team ID
  Future<Team> userDeleteTeam(String teamId) async {
    final response = await userDeleteTeamWithHttpInfo(teamId);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return apiClient.deserialize(_decodeBodyBytes(response), 'Team') as Team;
    }
    return Future<Team>.value(null);
  }

  /// Generate invite
  ///
  /// Update the team. You must be an administrator of the team to edit it.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] teamId (required):
  ///   The team ID
  ///
  /// * [InviteRequest] body (required):
  Future<Response> userGenerateInviteWithHttpInfo(
      String teamId, InviteRequest body) async {
    // Verify required params are set.
    if (teamId == null) {
      throw ApiException(
          HttpStatus.badRequest, 'Missing required param: teamId');
    }
    if (body == null) {
      throw ApiException(HttpStatus.badRequest, 'Missing required param: body');
    }

    final path = r'/user/teams/{teamId}/invites'
        .replaceAll('{' + 'teamId' + '}', teamId.toString());

    Object postBody = body;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    final contentTypes = <String>['application/json'];
    final nullableContentType =
        contentTypes.isNotEmpty ? contentTypes[0] : null;
    final authNames = <String>['APIToken'];

    if (nullableContentType != null &&
        nullableContentType.toLowerCase().startsWith('multipart/form-data')) {
      bool hasFields = false;
      final mp = MultipartRequest(null, null);
      if (hasFields) {
        postBody = mp;
      }
    } else {}

    return await apiClient.invokeAPI(
      path,
      'POST',
      queryParams,
      postBody,
      headerParams,
      formParams,
      nullableContentType,
      authNames,
    );
  }

  /// Generate invite
  ///
  /// Update the team. You must be an administrator of the team to edit it.
  ///
  /// Parameters:
  ///
  /// * [String] teamId (required):
  ///   The team ID
  ///
  /// * [InviteRequest] body (required):
  Future<Invite> userGenerateInvite(String teamId, InviteRequest body) async {
    final response = await userGenerateInviteWithHttpInfo(teamId, body);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return apiClient.deserialize(_decodeBodyBytes(response), 'Invite')
          as Invite;
    }
    return Future<Invite>.value(null);
  }

  /// List invites
  ///
  /// Update the team. You must be an administrator of the team to edit it.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] teamId (required):
  ///   The team ID
  Future<Response> userListInvitesWithHttpInfo(String teamId) async {
    // Verify required params are set.
    if (teamId == null) {
      throw ApiException(
          HttpStatus.badRequest, 'Missing required param: teamId');
    }

    final path = r'/user/teams/{teamId}/invites'
        .replaceAll('{' + 'teamId' + '}', teamId.toString());

    Object postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    final contentTypes = <String>[];
    final nullableContentType =
        contentTypes.isNotEmpty ? contentTypes[0] : null;
    final authNames = <String>['APIToken'];

    if (nullableContentType != null &&
        nullableContentType.toLowerCase().startsWith('multipart/form-data')) {
      bool hasFields = false;
      final mp = MultipartRequest(null, null);
      if (hasFields) {
        postBody = mp;
      }
    } else {}

    return await apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      nullableContentType,
      authNames,
    );
  }

  /// List invites
  ///
  /// Update the team. You must be an administrator of the team to edit it.
  ///
  /// Parameters:
  ///
  /// * [String] teamId (required):
  ///   The team ID
  Future<InviteList> userListInvites(String teamId) async {
    final response = await userListInvitesWithHttpInfo(teamId);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return apiClient.deserialize(_decodeBodyBytes(response), 'InviteList')
          as InviteList;
    }
    return Future<InviteList>.value(null);
  }

  /// List teams
  ///
  /// Update the team. You must be an administrator of the team to edit it.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> userListTeamsWithHttpInfo() async {
    final path = r'/user/teams';

    Object postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    final contentTypes = <String>[];
    final nullableContentType =
        contentTypes.isNotEmpty ? contentTypes[0] : null;
    final authNames = <String>['APIToken'];

    if (nullableContentType != null &&
        nullableContentType.toLowerCase().startsWith('multipart/form-data')) {
      bool hasFields = false;
      final mp = MultipartRequest(null, null);
      if (hasFields) {
        postBody = mp;
      }
    } else {}

    return await apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      nullableContentType,
      authNames,
    );
  }

  /// List teams
  ///
  /// Update the team. You must be an administrator of the team to edit it.
  Future<TeamList> userListTeams() async {
    final response = await userListTeamsWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return apiClient.deserialize(_decodeBodyBytes(response), 'TeamList')
          as TeamList;
    }
    return Future<TeamList>.value(null);
  }

  /// Retrieve invite
  ///
  /// Read a single invite from the team's set of non-redeemed invites.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] teamId (required):
  ///   The team ID
  ///
  /// * [String] code (required):
  ///   The invite code.
  Future<Response> userRetrieveInviteWithHttpInfo(
      String teamId, String code) async {
    // Verify required params are set.
    if (teamId == null) {
      throw ApiException(
          HttpStatus.badRequest, 'Missing required param: teamId');
    }
    if (code == null) {
      throw ApiException(HttpStatus.badRequest, 'Missing required param: code');
    }

    final path = r'/user/teams/{teamId}/invites/{code}'
        .replaceAll('{' + 'teamId' + '}', teamId.toString())
        .replaceAll('{' + 'code' + '}', code.toString());

    Object postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    final contentTypes = <String>[];
    final nullableContentType =
        contentTypes.isNotEmpty ? contentTypes[0] : null;
    final authNames = <String>['APIToken'];

    if (nullableContentType != null &&
        nullableContentType.toLowerCase().startsWith('multipart/form-data')) {
      bool hasFields = false;
      final mp = MultipartRequest(null, null);
      if (hasFields) {
        postBody = mp;
      }
    } else {}

    return await apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      nullableContentType,
      authNames,
    );
  }

  /// Retrieve invite
  ///
  /// Read a single invite from the team's set of non-redeemed invites.
  ///
  /// Parameters:
  ///
  /// * [String] teamId (required):
  ///   The team ID
  ///
  /// * [String] code (required):
  ///   The invite code.
  Future<Invite> userRetrieveInvite(String teamId, String code) async {
    final response = await userRetrieveInviteWithHttpInfo(teamId, code);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return apiClient.deserialize(_decodeBodyBytes(response), 'Invite')
          as Invite;
    }
    return Future<Invite>.value(null);
  }

  /// Retrieve member
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] teamId (required):
  ///   The team ID
  ///
  /// * [String] userId (required):
  ///   The user ID
  Future<Response> userRetrieveMemberWithHttpInfo(
      String teamId, String userId) async {
    // Verify required params are set.
    if (teamId == null) {
      throw ApiException(
          HttpStatus.badRequest, 'Missing required param: teamId');
    }
    if (userId == null) {
      throw ApiException(
          HttpStatus.badRequest, 'Missing required param: userId');
    }

    final path = r'/user/teams/{teamId}/members/{userId}'
        .replaceAll('{' + 'teamId' + '}', teamId.toString())
        .replaceAll('{' + 'userId' + '}', userId.toString());

    Object postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    final contentTypes = <String>[];
    final nullableContentType =
        contentTypes.isNotEmpty ? contentTypes[0] : null;
    final authNames = <String>['APIToken'];

    if (nullableContentType != null &&
        nullableContentType.toLowerCase().startsWith('multipart/form-data')) {
      bool hasFields = false;
      final mp = MultipartRequest(null, null);
      if (hasFields) {
        postBody = mp;
      }
    } else {}

    return await apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      nullableContentType,
      authNames,
    );
  }

  /// Retrieve member
  ///
  /// Parameters:
  ///
  /// * [String] teamId (required):
  ///   The team ID
  ///
  /// * [String] userId (required):
  ///   The user ID
  Future<Member> userRetrieveMember(String teamId, String userId) async {
    final response = await userRetrieveMemberWithHttpInfo(teamId, userId);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return apiClient.deserialize(_decodeBodyBytes(response), 'Member')
          as Member;
    }
    return Future<Member>.value(null);
  }

  /// Retrieve team
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] teamId (required):
  ///   The team ID
  Future<Response> userRetrieveTeamWithHttpInfo(String teamId) async {
    // Verify required params are set.
    if (teamId == null) {
      throw ApiException(
          HttpStatus.badRequest, 'Missing required param: teamId');
    }

    final path = r'/user/teams/{teamId}'
        .replaceAll('{' + 'teamId' + '}', teamId.toString());

    Object postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    final contentTypes = <String>[];
    final nullableContentType =
        contentTypes.isNotEmpty ? contentTypes[0] : null;
    final authNames = <String>['APIToken'];

    if (nullableContentType != null &&
        nullableContentType.toLowerCase().startsWith('multipart/form-data')) {
      bool hasFields = false;
      final mp = MultipartRequest(null, null);
      if (hasFields) {
        postBody = mp;
      }
    } else {}

    return await apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      nullableContentType,
      authNames,
    );
  }

  /// Retrieve team
  ///
  /// Parameters:
  ///
  /// * [String] teamId (required):
  ///   The team ID
  Future<Team> userRetrieveTeam(String teamId) async {
    final response = await userRetrieveTeamWithHttpInfo(teamId);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return apiClient.deserialize(_decodeBodyBytes(response), 'Team') as Team;
    }
    return Future<Team>.value(null);
  }

  /// List members
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] teamId (required):
  ///   The team ID
  Future<Response> userRetrieveTeamMembersWithHttpInfo(String teamId) async {
    // Verify required params are set.
    if (teamId == null) {
      throw ApiException(
          HttpStatus.badRequest, 'Missing required param: teamId');
    }

    final path = r'/user/teams/{teamId}/members'
        .replaceAll('{' + 'teamId' + '}', teamId.toString());

    Object postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    final contentTypes = <String>[];
    final nullableContentType =
        contentTypes.isNotEmpty ? contentTypes[0] : null;
    final authNames = <String>['APIToken'];

    if (nullableContentType != null &&
        nullableContentType.toLowerCase().startsWith('multipart/form-data')) {
      bool hasFields = false;
      final mp = MultipartRequest(null, null);
      if (hasFields) {
        postBody = mp;
      }
    } else {}

    return await apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      nullableContentType,
      authNames,
    );
  }

  /// List members
  ///
  /// Parameters:
  ///
  /// * [String] teamId (required):
  ///   The team ID
  Future<MemberList> userRetrieveTeamMembers(String teamId) async {
    final response = await userRetrieveTeamMembersWithHttpInfo(teamId);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return apiClient.deserialize(_decodeBodyBytes(response), 'MemberList')
          as MemberList;
    }
    return Future<MemberList>.value(null);
  }

  /// Update member
  ///
  /// You must be an administrator of the team to update member settings
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] teamId (required):
  ///
  /// * [String] userId (required):
  ///
  /// * [Member] body (required):
  Future<Response> userUpdateMemberWithHttpInfo(
      String teamId, String userId, Member body) async {
    // Verify required params are set.
    if (teamId == null) {
      throw ApiException(
          HttpStatus.badRequest, 'Missing required param: teamId');
    }
    if (userId == null) {
      throw ApiException(
          HttpStatus.badRequest, 'Missing required param: userId');
    }
    if (body == null) {
      throw ApiException(HttpStatus.badRequest, 'Missing required param: body');
    }

    final path = r'/user/teams/{teamId}/members/{userId}'
        .replaceAll('{' + 'teamId' + '}', teamId.toString())
        .replaceAll('{' + 'userId' + '}', userId.toString());

    Object postBody = body;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    final contentTypes = <String>['application/json'];
    final nullableContentType =
        contentTypes.isNotEmpty ? contentTypes[0] : null;
    final authNames = <String>['APIToken'];

    if (nullableContentType != null &&
        nullableContentType.toLowerCase().startsWith('multipart/form-data')) {
      bool hasFields = false;
      final mp = MultipartRequest(null, null);
      if (hasFields) {
        postBody = mp;
      }
    } else {}

    return await apiClient.invokeAPI(
      path,
      'PATCH',
      queryParams,
      postBody,
      headerParams,
      formParams,
      nullableContentType,
      authNames,
    );
  }

  /// Update member
  ///
  /// You must be an administrator of the team to update member settings
  ///
  /// Parameters:
  ///
  /// * [String] teamId (required):
  ///
  /// * [String] userId (required):
  ///
  /// * [Member] body (required):
  Future<Member> userUpdateMember(
      String teamId, String userId, Member body) async {
    final response = await userUpdateMemberWithHttpInfo(teamId, userId, body);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return apiClient.deserialize(_decodeBodyBytes(response), 'Member')
          as Member;
    }
    return Future<Member>.value(null);
  }

  /// Update team
  ///
  /// Update the team. You must be an administrator of the team to edit it.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] teamId (required):
  ///
  /// * [Team] body (required):
  Future<Response> userUpdateTeamWithHttpInfo(String teamId, Team body) async {
    // Verify required params are set.
    if (teamId == null) {
      throw ApiException(
          HttpStatus.badRequest, 'Missing required param: teamId');
    }
    if (body == null) {
      throw ApiException(HttpStatus.badRequest, 'Missing required param: body');
    }

    final path = r'/user/teams/{teamId}'
        .replaceAll('{' + 'teamId' + '}', teamId.toString());

    Object postBody = body;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    final contentTypes = <String>['application/json'];
    final nullableContentType =
        contentTypes.isNotEmpty ? contentTypes[0] : null;
    final authNames = <String>['APIToken'];

    if (nullableContentType != null &&
        nullableContentType.toLowerCase().startsWith('multipart/form-data')) {
      bool hasFields = false;
      final mp = MultipartRequest(null, null);
      if (hasFields) {
        postBody = mp;
      }
    } else {}

    return await apiClient.invokeAPI(
      path,
      'PATCH',
      queryParams,
      postBody,
      headerParams,
      formParams,
      nullableContentType,
      authNames,
    );
  }

  /// Update team
  ///
  /// Update the team. You must be an administrator of the team to edit it.
  ///
  /// Parameters:
  ///
  /// * [String] teamId (required):
  ///
  /// * [Team] body (required):
  Future<Team> userUpdateTeam(String teamId, Team body) async {
    final response = await userUpdateTeamWithHttpInfo(teamId, body);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return apiClient.deserialize(_decodeBodyBytes(response), 'Team') as Team;
    }
    return Future<Team>.value(null);
  }
}
