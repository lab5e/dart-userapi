# userapi.api.TeamsApi

## Load the API package
```dart
import 'package:userapi/api.dart';
```

All URIs are relative to *https://api.lab5e.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**acceptInvite**](TeamsApi.md#acceptinvite) | **POST** /user/teams/accept | Accept invite
[**createTeam**](TeamsApi.md#createteam) | **POST** /user/teams | Create team
[**deleteInvite**](TeamsApi.md#deleteinvite) | **DELETE** /user/teams/{teamId}/invites/{code} | Delete invite
[**deleteMember**](TeamsApi.md#deletemember) | **DELETE** /user/teams/{teamId}/members/{userId} | Remove member
[**deleteTeam**](TeamsApi.md#deleteteam) | **DELETE** /user/teams/{teamId} | Remove team
[**generateInvite**](TeamsApi.md#generateinvite) | **POST** /user/teams/{teamId}/invites | Generate invite
[**listInvites**](TeamsApi.md#listinvites) | **GET** /user/teams/{teamId}/invites | List invites
[**listTeams**](TeamsApi.md#listteams) | **GET** /user/teams | List teams
[**retrieveInvite**](TeamsApi.md#retrieveinvite) | **GET** /user/teams/{teamId}/invites/{code} | Retrieve invite
[**retrieveMember**](TeamsApi.md#retrievemember) | **GET** /user/teams/{teamId}/members/{userId} | Retrieve member
[**retrieveTeam**](TeamsApi.md#retrieveteam) | **GET** /user/teams/{teamId} | Retrieve team
[**retrieveTeamMembers**](TeamsApi.md#retrieveteammembers) | **GET** /user/teams/{teamId}/members | List members
[**updateMember**](TeamsApi.md#updatemember) | **PATCH** /user/teams/{teamId}/members/{userId} | Update member
[**updateTeam**](TeamsApi.md#updateteam) | **PATCH** /user/teams/{teamId} | Update team


# **acceptInvite**
> Team acceptInvite(body)

Accept invite

Accept an invite from another user. This will add the currently logged in user to the team as a regular memeber. When the invite is accepted it is removed from the team's invites and cannot be reused.

### Example 
```dart
import 'package:userapi/api.dart';
// TODO Configure API key authorization: APIToken
//defaultApiClient.getAuthentication<ApiKeyAuth>('APIToken').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('APIToken').apiKeyPrefix = 'Bearer';

final api_instance = TeamsApi();
final body = AcceptInviteRequest(); // AcceptInviteRequest | 

try { 
    final result = api_instance.acceptInvite(body);
    print(result);
} catch (e) {
    print('Exception when calling TeamsApi->acceptInvite: $e\n');
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

# **createTeam**
> Team createTeam(body)

Create team

### Example 
```dart
import 'package:userapi/api.dart';
// TODO Configure API key authorization: APIToken
//defaultApiClient.getAuthentication<ApiKeyAuth>('APIToken').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('APIToken').apiKeyPrefix = 'Bearer';

final api_instance = TeamsApi();
final body = Team(); // Team | 

try { 
    final result = api_instance.createTeam(body);
    print(result);
} catch (e) {
    print('Exception when calling TeamsApi->createTeam: $e\n');
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

# **deleteInvite**
> DeleteInviteResponse deleteInvite(teamId, code)

Delete invite

Delete an invite created earlier. You must be an administrator of the team to perform this action

### Example 
```dart
import 'package:userapi/api.dart';
// TODO Configure API key authorization: APIToken
//defaultApiClient.getAuthentication<ApiKeyAuth>('APIToken').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('APIToken').apiKeyPrefix = 'Bearer';

final api_instance = TeamsApi();
final teamId = teamId_example; // String | The team ID
final code = code_example; // String | The invite code.

try { 
    final result = api_instance.deleteInvite(teamId, code);
    print(result);
} catch (e) {
    print('Exception when calling TeamsApi->deleteInvite: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **teamId** | **String**| The team ID | 
 **code** | **String**| The invite code. | 

### Return type

[**DeleteInviteResponse**](DeleteInviteResponse.md)

### Authorization

[APIToken](../README.md#APIToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteMember**
> Member deleteMember(teamId, userId)

Remove member

Remove a member from the team. You must be an administrator to do this. You can't remove yourself from the team.

### Example 
```dart
import 'package:userapi/api.dart';
// TODO Configure API key authorization: APIToken
//defaultApiClient.getAuthentication<ApiKeyAuth>('APIToken').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('APIToken').apiKeyPrefix = 'Bearer';

final api_instance = TeamsApi();
final teamId = teamId_example; // String | The team ID
final userId = userId_example; // String | The user ID

try { 
    final result = api_instance.deleteMember(teamId, userId);
    print(result);
} catch (e) {
    print('Exception when calling TeamsApi->deleteMember: $e\n');
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

# **deleteTeam**
> Team deleteTeam(teamId)

Remove team

Update the team. You must be an administrator of the team to edit it.

### Example 
```dart
import 'package:userapi/api.dart';
// TODO Configure API key authorization: APIToken
//defaultApiClient.getAuthentication<ApiKeyAuth>('APIToken').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('APIToken').apiKeyPrefix = 'Bearer';

final api_instance = TeamsApi();
final teamId = teamId_example; // String | The team ID

try { 
    final result = api_instance.deleteTeam(teamId);
    print(result);
} catch (e) {
    print('Exception when calling TeamsApi->deleteTeam: $e\n');
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

# **generateInvite**
> Invite generateInvite(teamId, body)

Generate invite

Update the team. You must be an administrator of the team to edit it.

### Example 
```dart
import 'package:userapi/api.dart';
// TODO Configure API key authorization: APIToken
//defaultApiClient.getAuthentication<ApiKeyAuth>('APIToken').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('APIToken').apiKeyPrefix = 'Bearer';

final api_instance = TeamsApi();
final teamId = teamId_example; // String | The team ID
final body = InviteRequest(); // InviteRequest | 

try { 
    final result = api_instance.generateInvite(teamId, body);
    print(result);
} catch (e) {
    print('Exception when calling TeamsApi->generateInvite: $e\n');
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

# **listInvites**
> InviteList listInvites(teamId)

List invites

Update the team. You must be an administrator of the team to edit it.

### Example 
```dart
import 'package:userapi/api.dart';
// TODO Configure API key authorization: APIToken
//defaultApiClient.getAuthentication<ApiKeyAuth>('APIToken').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('APIToken').apiKeyPrefix = 'Bearer';

final api_instance = TeamsApi();
final teamId = teamId_example; // String | The team ID

try { 
    final result = api_instance.listInvites(teamId);
    print(result);
} catch (e) {
    print('Exception when calling TeamsApi->listInvites: $e\n');
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

# **listTeams**
> TeamList listTeams()

List teams

Update the team. You must be an administrator of the team to edit it.

### Example 
```dart
import 'package:userapi/api.dart';
// TODO Configure API key authorization: APIToken
//defaultApiClient.getAuthentication<ApiKeyAuth>('APIToken').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('APIToken').apiKeyPrefix = 'Bearer';

final api_instance = TeamsApi();

try { 
    final result = api_instance.listTeams();
    print(result);
} catch (e) {
    print('Exception when calling TeamsApi->listTeams: $e\n');
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

# **retrieveInvite**
> Invite retrieveInvite(teamId, code)

Retrieve invite

Read a single invite from the team's set of non-redeemed invites.

### Example 
```dart
import 'package:userapi/api.dart';
// TODO Configure API key authorization: APIToken
//defaultApiClient.getAuthentication<ApiKeyAuth>('APIToken').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('APIToken').apiKeyPrefix = 'Bearer';

final api_instance = TeamsApi();
final teamId = teamId_example; // String | The team ID
final code = code_example; // String | The invite code.

try { 
    final result = api_instance.retrieveInvite(teamId, code);
    print(result);
} catch (e) {
    print('Exception when calling TeamsApi->retrieveInvite: $e\n');
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

# **retrieveMember**
> Member retrieveMember(teamId, userId)

Retrieve member

### Example 
```dart
import 'package:userapi/api.dart';
// TODO Configure API key authorization: APIToken
//defaultApiClient.getAuthentication<ApiKeyAuth>('APIToken').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('APIToken').apiKeyPrefix = 'Bearer';

final api_instance = TeamsApi();
final teamId = teamId_example; // String | The team ID
final userId = userId_example; // String | The user ID

try { 
    final result = api_instance.retrieveMember(teamId, userId);
    print(result);
} catch (e) {
    print('Exception when calling TeamsApi->retrieveMember: $e\n');
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

# **retrieveTeam**
> Team retrieveTeam(teamId)

Retrieve team

### Example 
```dart
import 'package:userapi/api.dart';
// TODO Configure API key authorization: APIToken
//defaultApiClient.getAuthentication<ApiKeyAuth>('APIToken').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('APIToken').apiKeyPrefix = 'Bearer';

final api_instance = TeamsApi();
final teamId = teamId_example; // String | The team ID

try { 
    final result = api_instance.retrieveTeam(teamId);
    print(result);
} catch (e) {
    print('Exception when calling TeamsApi->retrieveTeam: $e\n');
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

# **retrieveTeamMembers**
> MemberList retrieveTeamMembers(teamId)

List members

### Example 
```dart
import 'package:userapi/api.dart';
// TODO Configure API key authorization: APIToken
//defaultApiClient.getAuthentication<ApiKeyAuth>('APIToken').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('APIToken').apiKeyPrefix = 'Bearer';

final api_instance = TeamsApi();
final teamId = teamId_example; // String | The team ID

try { 
    final result = api_instance.retrieveTeamMembers(teamId);
    print(result);
} catch (e) {
    print('Exception when calling TeamsApi->retrieveTeamMembers: $e\n');
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

# **updateMember**
> Member updateMember(teamId, userId, body)

Update member

You must be an administrator of the team to update member settings

### Example 
```dart
import 'package:userapi/api.dart';
// TODO Configure API key authorization: APIToken
//defaultApiClient.getAuthentication<ApiKeyAuth>('APIToken').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('APIToken').apiKeyPrefix = 'Bearer';

final api_instance = TeamsApi();
final teamId = teamId_example; // String | 
final userId = userId_example; // String | 
final body = Member(); // Member | 

try { 
    final result = api_instance.updateMember(teamId, userId, body);
    print(result);
} catch (e) {
    print('Exception when calling TeamsApi->updateMember: $e\n');
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

# **updateTeam**
> Team updateTeam(teamId, body)

Update team

Update the team. You must be an administrator of the team to edit it.

### Example 
```dart
import 'package:userapi/api.dart';
// TODO Configure API key authorization: APIToken
//defaultApiClient.getAuthentication<ApiKeyAuth>('APIToken').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('APIToken').apiKeyPrefix = 'Bearer';

final api_instance = TeamsApi();
final teamId = teamId_example; // String | 
final body = Team(); // Team | 

try { 
    final result = api_instance.updateTeam(teamId, body);
    print(result);
} catch (e) {
    print('Exception when calling TeamsApi->updateTeam: $e\n');
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

