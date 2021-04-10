//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of userapi;

class TokensApi {
  TokensApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Create token
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [Token] body (required):
  Future<Response> userCreateTokenWithHttpInfo(Token body) async {
    // Verify required params are set.
    if (body == null) {
      throw ApiException(HttpStatus.badRequest, 'Missing required param: body');
    }

    final path = r'/user/tokens';

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

  /// Create token
  ///
  /// Parameters:
  ///
  /// * [Token] body (required):
  Future<Token> userCreateToken(Token body) async {
    final response = await userCreateTokenWithHttpInfo(body);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return apiClient.deserialize(_decodeBodyBytes(response), 'Token')
          as Token;
    }
    return Future<Token>.value(null);
  }

  /// Remove token
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] token (required):
  ///   The token to delete.
  Future<Response> userDeleteTokenWithHttpInfo(String token) async {
    // Verify required params are set.
    if (token == null) {
      throw ApiException(
          HttpStatus.badRequest, 'Missing required param: token');
    }

    final path = r'/user/tokens/{token}'
        .replaceAll('{' + 'token' + '}', token.toString());

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

  /// Remove token
  ///
  /// Parameters:
  ///
  /// * [String] token (required):
  ///   The token to delete.
  Future<Object> userDeleteToken(String token) async {
    final response = await userDeleteTokenWithHttpInfo(token);
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

  /// List tokens
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> userListTokensWithHttpInfo() async {
    final path = r'/user/tokens';

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

  /// List tokens
  Future<TokenList> userListTokens() async {
    final response = await userListTokensWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return apiClient.deserialize(_decodeBodyBytes(response), 'TokenList')
          as TokenList;
    }
    return Future<TokenList>.value(null);
  }

  /// Retrieve token
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] token (required):
  Future<Response> userRetrieveTokenWithHttpInfo(String token) async {
    // Verify required params are set.
    if (token == null) {
      throw ApiException(
          HttpStatus.badRequest, 'Missing required param: token');
    }

    final path = r'/user/tokens/{token}'
        .replaceAll('{' + 'token' + '}', token.toString());

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

  /// Retrieve token
  ///
  /// Parameters:
  ///
  /// * [String] token (required):
  Future<Token> userRetrieveToken(String token) async {
    final response = await userRetrieveTokenWithHttpInfo(token);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return apiClient.deserialize(_decodeBodyBytes(response), 'Token')
          as Token;
    }
    return Future<Token>.value(null);
  }

  /// Update token
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] token (required):
  ///   The token  Use this in the `X-API-Token` header when using the API.
  ///
  /// * [Token] body (required):
  Future<Response> userUpdateTokenWithHttpInfo(String token, Token body) async {
    // Verify required params are set.
    if (token == null) {
      throw ApiException(
          HttpStatus.badRequest, 'Missing required param: token');
    }
    if (body == null) {
      throw ApiException(HttpStatus.badRequest, 'Missing required param: body');
    }

    final path = r'/user/tokens/{token}'
        .replaceAll('{' + 'token' + '}', token.toString());

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

  /// Update token
  ///
  /// Parameters:
  ///
  /// * [String] token (required):
  ///   The token  Use this in the `X-API-Token` header when using the API.
  ///
  /// * [Token] body (required):
  Future<Token> userUpdateToken(String token, Token body) async {
    final response = await userUpdateTokenWithHttpInfo(token, body);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return apiClient.deserialize(_decodeBodyBytes(response), 'Token')
          as Token;
    }
    return Future<Token>.value(null);
  }
}
