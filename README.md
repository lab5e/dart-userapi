# userapi
API to manage teams, members and tokens

This Dart package is automatically generated by the [OpenAPI Generator](https://openapi-generator.tech) project:

- API version: 1.3.6 crooked-daija
- Build package: org.openapitools.codegen.languages.DartClientCodegen
For more information, please visit [https://docs.lab5e.com](https://docs.lab5e.com)

## Requirements

Dart 2.0 or later

## Installation & Usage

### Github
If this Dart package is published to Github, add the following dependency to your pubspec.yaml
```
dependencies:
  userapi:
    git: https://github.com/lab5e/dart-userapi.git
```

### Local
To use the package in your local drive, add the following dependency to your pubspec.yaml
```
dependencies:
  userapi:
    path: /path/to/userapi
```

## Tests

TODO

## Getting Started

Please follow the [installation procedure](#installation--usage) and then run the following:

```dart
import 'package:userapi/api.dart';

// TODO Configure API key authorization: APIToken
//defaultApiClient.getAuthentication<ApiKeyAuth>('APIToken').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('APIToken').apiKeyPrefix = 'Bearer';

final api_instance = ProfileApi();

try {
    final result = api_instance.getUserProfile();
    print(result);
} catch (e) {
    print('Exception when calling ProfileApi->getUserProfile: $e\n');
}

```

## Documentation for API Endpoints

All URIs are relative to *https://api.lab5e.com*

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
*ProfileApi* | [**getUserProfile**](doc//ProfileApi.md#getuserprofile) | **GET** /user/profile | Logged in profile
*TeamsApi* | [**acceptInvite**](doc//TeamsApi.md#acceptinvite) | **POST** /user/teams/accept | Accept invite
*TeamsApi* | [**createTeam**](doc//TeamsApi.md#createteam) | **POST** /user/teams | Create team
*TeamsApi* | [**deleteInvite**](doc//TeamsApi.md#deleteinvite) | **DELETE** /user/teams/{teamId}/invites/{code} | Delete invite
*TeamsApi* | [**deleteMember**](doc//TeamsApi.md#deletemember) | **DELETE** /user/teams/{teamId}/members/{userId} | Remove member
*TeamsApi* | [**deleteTeam**](doc//TeamsApi.md#deleteteam) | **DELETE** /user/teams/{teamId} | Remove team
*TeamsApi* | [**generateInvite**](doc//TeamsApi.md#generateinvite) | **POST** /user/teams/{teamId}/invites | Generate invite
*TeamsApi* | [**listInvites**](doc//TeamsApi.md#listinvites) | **GET** /user/teams/{teamId}/invites | List invites
*TeamsApi* | [**listTeams**](doc//TeamsApi.md#listteams) | **GET** /user/teams | List teams
*TeamsApi* | [**retrieveInvite**](doc//TeamsApi.md#retrieveinvite) | **GET** /user/teams/{teamId}/invites/{code} | Retrieve invite
*TeamsApi* | [**retrieveMember**](doc//TeamsApi.md#retrievemember) | **GET** /user/teams/{teamId}/members/{userId} | Retrieve member
*TeamsApi* | [**retrieveTeam**](doc//TeamsApi.md#retrieveteam) | **GET** /user/teams/{teamId} | Retrieve team
*TeamsApi* | [**retrieveTeamMembers**](doc//TeamsApi.md#retrieveteammembers) | **GET** /user/teams/{teamId}/members | List members
*TeamsApi* | [**updateMember**](doc//TeamsApi.md#updatemember) | **PATCH** /user/teams/{teamId}/members/{userId} | Update member
*TeamsApi* | [**updateTeam**](doc//TeamsApi.md#updateteam) | **PATCH** /user/teams/{teamId} | Update team
*TokensApi* | [**createToken**](doc//TokensApi.md#createtoken) | **POST** /user/tokens | Create token
*TokensApi* | [**deleteToken**](doc//TokensApi.md#deletetoken) | **DELETE** /user/tokens/{token} | Remove token
*TokensApi* | [**listTokens**](doc//TokensApi.md#listtokens) | **GET** /user/tokens | List tokens
*TokensApi* | [**retrieveToken**](doc//TokensApi.md#retrievetoken) | **GET** /user/tokens/{token} | Retrieve token
*TokensApi* | [**updateToken**](doc//TokensApi.md#updatetoken) | **PATCH** /user/tokens/{token} | Update token


## Documentation For Models

 - [AcceptInviteRequest](doc//AcceptInviteRequest.md)
 - [DeleteInviteResponse](doc//DeleteInviteResponse.md)
 - [DeleteTokenResponse](doc//DeleteTokenResponse.md)
 - [Invite](doc//Invite.md)
 - [InviteList](doc//InviteList.md)
 - [InviteRequest](doc//InviteRequest.md)
 - [Member](doc//Member.md)
 - [MemberList](doc//MemberList.md)
 - [ProtobufAny](doc//ProtobufAny.md)
 - [RpcStatus](doc//RpcStatus.md)
 - [Team](doc//Team.md)
 - [TeamList](doc//TeamList.md)
 - [Token](doc//Token.md)
 - [TokenList](doc//TokenList.md)
 - [UserProfile](doc//UserProfile.md)


## Documentation For Authorization


## APIToken

- **Type**: API key
- **API key parameter name**: X-API-Token
- **Location**: HTTP header


## Author

dev@lab5e.com


