# lab5e.api.TeamsApi

## Load the API package
```dart
import 'package:lab5e/api.dart';
```

All URIs are relative to *https://api.lab5e.com/user*

Method | HTTP request | Description
------------- | ------------- | -------------
[**userAcceptInvite**](TeamsApi.md#useracceptinvite) | **POST** /user/teams/accept | Accept invite
[**userCreateTeam**](TeamsApi.md#usercreateteam) | **POST** /user/teams | Create team
[**userDeleteInvite**](TeamsApi.md#userdeleteinvite) | **DELETE** /user/teams/{teamId}/invites/{code} | Delete invite
[**userDeleteMember**](TeamsApi.md#userdeletemember) | **DELETE** /user/teams/{teamId}/members/{userId} | Remove member
[**userDeleteTeam**](TeamsApi.md#userdeleteteam) | **DELETE** /user/teams/{teamId} | Remove team
[**userGenerateInvite**](TeamsApi.md#usergenerateinvite) | **POST** /user/teams/{teamId}/invites | Generate invite
[**userListInvites**](TeamsApi.md#userlistinvites) | **GET** /user/teams/{teamId}/invites | List invites
[**userListTeams**](TeamsApi.md#userlistteams) | **GET** /user/teams | List teams
[**userRetrieveInvite**](TeamsApi.md#userretrieveinvite) | **GET** /user/teams/{teamId}/invites/{code} | Retrieve invite
[**userRetrieveMember**](TeamsApi.md#userretrievemember) | **GET** /user/teams/{teamId}/members/{userId} | Retrieve member
[**userRetrieveTeam**](TeamsApi.md#userretrieveteam) | **GET** /user/teams/{teamId} | Retrieve team
[**userRetrieveTeamMembers**](TeamsApi.md#userretrieveteammembers) | **GET** /user/teams/{teamId}/members | List members
[**userUpdateMember**](TeamsApi.md#userupdatemember) | **PATCH** /user/teams/{teamId}/members/{userId} | Update member
[**userUpdateTeam**](TeamsApi.md#userupdateteam) | **PATCH** /user/teams/{teamId} | Update team


# **userAcceptInvite**
> Team userAcceptInvite(body)

Accept invite

Accept an invite from another user. This will add the currently logged in user to the team as a regular memeber. When the invite is accepted it is removed from the team's invites and cannot be reused.

### Example 
```dart
import 'package:lab5e/api.dart';
// TODO Configure API key authorization: APIToken
//defaultApiClient.getAuthentication<ApiKeyAuth>('APIToken').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('APIToken').apiKeyPrefix = 'Bearer';

final api_instance = TeamsApi();
final body = AcceptInviteRequest(); // AcceptInviteRequest | 

try { 
    final result = api_instance.userAcceptInvite(body);
    print(result);
} catch (e) {
    print('Exception when calling TeamsApi->userAcceptInvite: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**AcceptInviteRequest**](AcceptInviteRequest.md)|  | 

### Return type

[**Team**](Team.md)

### Authorization

[APIToken](../README.md#APIToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **userCreateTeam**
> Team userCreateTeam(body)

Create team

### Example 
```dart
import 'package:lab5e/api.dart';
// TODO Configure API key authorization: APIToken
//defaultApiClient.getAuthentication<ApiKeyAuth>('APIToken').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('APIToken').apiKeyPrefix = 'Bearer';

final api_instance = TeamsApi();
final body = Team(); // Team | 

try { 
    final result = api_instance.userCreateTeam(body);
    print(result);
} catch (e) {
    print('Exception when calling TeamsApi->userCreateTeam: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**Team**](Team.md)|  | 

### Return type

[**Team**](Team.md)

### Authorization

[APIToken](../README.md#APIToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **userDeleteInvite**
> Object userDeleteInvite(teamId, code)

Delete invite

Delete an invite created earlier. You must be an administrator of the team to perform this action

### Example 
```dart
import 'package:lab5e/api.dart';
// TODO Configure API key authorization: APIToken
//defaultApiClient.getAuthentication<ApiKeyAuth>('APIToken').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('APIToken').apiKeyPrefix = 'Bearer';

final api_instance = TeamsApi();
final teamId = teamId_example; // String | The team ID
final code = code_example; // String | The invite code.

try { 
    final result = api_instance.userDeleteInvite(teamId, code);
    print(result);
} catch (e) {
    print('Exception when calling TeamsApi->userDeleteInvite: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **teamId** | **String**| The team ID | 
 **code** | **String**| The invite code. | 

### Return type

[**Object**](Object.md)

### Authorization

[APIToken](../README.md#APIToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **userDeleteMember**
> Member userDeleteMember(teamId, userId)

Remove member

Remove a member from the team. You must be an administrator to do this. You can't remove yourself from the team.

### Example 
```dart
import 'package:lab5e/api.dart';
// TODO Configure API key authorization: APIToken
//defaultApiClient.getAuthentication<ApiKeyAuth>('APIToken').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('APIToken').apiKeyPrefix = 'Bearer';

final api_instance = TeamsApi();
final teamId = teamId_example; // String | The team ID
final userId = userId_example; // String | The user ID

try { 
    final result = api_instance.userDeleteMember(teamId, userId);
    print(result);
} catch (e) {
    print('Exception when calling TeamsApi->userDeleteMember: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **teamId** | **String**| The team ID | 
 **userId** | **String**| The user ID | 

### Return type

[**Member**](Member.md)

### Authorization

[APIToken](../README.md#APIToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **userDeleteTeam**
> Team userDeleteTeam(teamId)

Remove team

Update the team. You must be an administrator of the team to edit it.

### Example 
```dart
import 'package:lab5e/api.dart';
// TODO Configure API key authorization: APIToken
//defaultApiClient.getAuthentication<ApiKeyAuth>('APIToken').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('APIToken').apiKeyPrefix = 'Bearer';

final api_instance = TeamsApi();
final teamId = teamId_example; // String | The team ID

try { 
    final result = api_instance.userDeleteTeam(teamId);
    print(result);
} catch (e) {
    print('Exception when calling TeamsApi->userDeleteTeam: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **teamId** | **String**| The team ID | 

### Return type

[**Team**](Team.md)

### Authorization

[APIToken](../README.md#APIToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **userGenerateInvite**
> Invite userGenerateInvite(teamId, body)

Generate invite

Update the team. You must be an administrator of the team to edit it.

### Example 
```dart
import 'package:lab5e/api.dart';
// TODO Configure API key authorization: APIToken
//defaultApiClient.getAuthentication<ApiKeyAuth>('APIToken').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('APIToken').apiKeyPrefix = 'Bearer';

final api_instance = TeamsApi();
final teamId = teamId_example; // String | The team ID
final body = InviteRequest(); // InviteRequest | 

try { 
    final result = api_instance.userGenerateInvite(teamId, body);
    print(result);
} catch (e) {
    print('Exception when calling TeamsApi->userGenerateInvite: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **teamId** | **String**| The team ID | 
 **body** | [**InviteRequest**](InviteRequest.md)|  | 

### Return type

[**Invite**](Invite.md)

### Authorization

[APIToken](../README.md#APIToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **userListInvites**
> InviteList userListInvites(teamId)

List invites

Update the team. You must be an administrator of the team to edit it.

### Example 
```dart
import 'package:lab5e/api.dart';
// TODO Configure API key authorization: APIToken
//defaultApiClient.getAuthentication<ApiKeyAuth>('APIToken').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('APIToken').apiKeyPrefix = 'Bearer';

final api_instance = TeamsApi();
final teamId = teamId_example; // String | The team ID

try { 
    final result = api_instance.userListInvites(teamId);
    print(result);
} catch (e) {
    print('Exception when calling TeamsApi->userListInvites: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **teamId** | **String**| The team ID | 

### Return type

[**InviteList**](InviteList.md)

### Authorization

[APIToken](../README.md#APIToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **userListTeams**
> TeamList userListTeams()

List teams

Update the team. You must be an administrator of the team to edit it.

### Example 
```dart
import 'package:lab5e/api.dart';
// TODO Configure API key authorization: APIToken
//defaultApiClient.getAuthentication<ApiKeyAuth>('APIToken').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('APIToken').apiKeyPrefix = 'Bearer';

final api_instance = TeamsApi();

try { 
    final result = api_instance.userListTeams();
    print(result);
} catch (e) {
    print('Exception when calling TeamsApi->userListTeams: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**TeamList**](TeamList.md)

### Authorization

[APIToken](../README.md#APIToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **userRetrieveInvite**
> Invite userRetrieveInvite(teamId, code)

Retrieve invite

Read a single invite from the team's set of non-redeemed invites.

### Example 
```dart
import 'package:lab5e/api.dart';
// TODO Configure API key authorization: APIToken
//defaultApiClient.getAuthentication<ApiKeyAuth>('APIToken').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('APIToken').apiKeyPrefix = 'Bearer';

final api_instance = TeamsApi();
final teamId = teamId_example; // String | The team ID
final code = code_example; // String | The invite code.

try { 
    final result = api_instance.userRetrieveInvite(teamId, code);
    print(result);
} catch (e) {
    print('Exception when calling TeamsApi->userRetrieveInvite: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **teamId** | **String**| The team ID | 
 **code** | **String**| The invite code. | 

### Return type

[**Invite**](Invite.md)

### Authorization

[APIToken](../README.md#APIToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **userRetrieveMember**
> Member userRetrieveMember(teamId, userId)

Retrieve member

### Example 
```dart
import 'package:lab5e/api.dart';
// TODO Configure API key authorization: APIToken
//defaultApiClient.getAuthentication<ApiKeyAuth>('APIToken').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('APIToken').apiKeyPrefix = 'Bearer';

final api_instance = TeamsApi();
final teamId = teamId_example; // String | The team ID
final userId = userId_example; // String | The user ID

try { 
    final result = api_instance.userRetrieveMember(teamId, userId);
    print(result);
} catch (e) {
    print('Exception when calling TeamsApi->userRetrieveMember: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **teamId** | **String**| The team ID | 
 **userId** | **String**| The user ID | 

### Return type

[**Member**](Member.md)

### Authorization

[APIToken](../README.md#APIToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **userRetrieveTeam**
> Team userRetrieveTeam(teamId)

Retrieve team

### Example 
```dart
import 'package:lab5e/api.dart';
// TODO Configure API key authorization: APIToken
//defaultApiClient.getAuthentication<ApiKeyAuth>('APIToken').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('APIToken').apiKeyPrefix = 'Bearer';

final api_instance = TeamsApi();
final teamId = teamId_example; // String | The team ID

try { 
    final result = api_instance.userRetrieveTeam(teamId);
    print(result);
} catch (e) {
    print('Exception when calling TeamsApi->userRetrieveTeam: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **teamId** | **String**| The team ID | 

### Return type

[**Team**](Team.md)

### Authorization

[APIToken](../README.md#APIToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **userRetrieveTeamMembers**
> MemberList userRetrieveTeamMembers(teamId)

List members

### Example 
```dart
import 'package:lab5e/api.dart';
// TODO Configure API key authorization: APIToken
//defaultApiClient.getAuthentication<ApiKeyAuth>('APIToken').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('APIToken').apiKeyPrefix = 'Bearer';

final api_instance = TeamsApi();
final teamId = teamId_example; // String | The team ID

try { 
    final result = api_instance.userRetrieveTeamMembers(teamId);
    print(result);
} catch (e) {
    print('Exception when calling TeamsApi->userRetrieveTeamMembers: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **teamId** | **String**| The team ID | 

### Return type

[**MemberList**](MemberList.md)

### Authorization

[APIToken](../README.md#APIToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **userUpdateMember**
> Member userUpdateMember(teamId, userId, body)

Update member

You must be an administrator of the team to update member settings

### Example 
```dart
import 'package:lab5e/api.dart';
// TODO Configure API key authorization: APIToken
//defaultApiClient.getAuthentication<ApiKeyAuth>('APIToken').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('APIToken').apiKeyPrefix = 'Bearer';

final api_instance = TeamsApi();
final teamId = teamId_example; // String | 
final userId = userId_example; // String | 
final body = Member(); // Member | 

try { 
    final result = api_instance.userUpdateMember(teamId, userId, body);
    print(result);
} catch (e) {
    print('Exception when calling TeamsApi->userUpdateMember: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **teamId** | **String**|  | 
 **userId** | **String**|  | 
 **body** | [**Member**](Member.md)|  | 

### Return type

[**Member**](Member.md)

### Authorization

[APIToken](../README.md#APIToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **userUpdateTeam**
> Team userUpdateTeam(teamId, body)

Update team

Update the team. You must be an administrator of the team to edit it.

### Example 
```dart
import 'package:lab5e/api.dart';
// TODO Configure API key authorization: APIToken
//defaultApiClient.getAuthentication<ApiKeyAuth>('APIToken').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('APIToken').apiKeyPrefix = 'Bearer';

final api_instance = TeamsApi();
final teamId = teamId_example; // String | 
final body = Team(); // Team | 

try { 
    final result = api_instance.userUpdateTeam(teamId, body);
    print(result);
} catch (e) {
    print('Exception when calling TeamsApi->userUpdateTeam: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **teamId** | **String**|  | 
 **body** | [**Team**](Team.md)|  | 

### Return type

[**Team**](Team.md)

### Authorization

[APIToken](../README.md#APIToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

