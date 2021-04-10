# lab5e.api.ProfileApi

## Load the API package
```dart
import 'package:lab5e/api.dart';
```

All URIs are relative to *https://api.lab5e.com/user*

Method | HTTP request | Description
------------- | ------------- | -------------
[**userGetUserProfile**](ProfileApi.md#usergetuserprofile) | **GET** /user/profile | Logged in profile


# **userGetUserProfile**
> UserProfile userGetUserProfile()

Logged in profile

Show your user profile information

### Example 
```dart
import 'package:lab5e/api.dart';
// TODO Configure API key authorization: APIToken
//defaultApiClient.getAuthentication<ApiKeyAuth>('APIToken').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('APIToken').apiKeyPrefix = 'Bearer';

final api_instance = ProfileApi();

try { 
    final result = api_instance.userGetUserProfile();
    print(result);
} catch (e) {
    print('Exception when calling ProfileApi->userGetUserProfile: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**UserProfile**](UserProfile.md)

### Authorization

[APIToken](../README.md#APIToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

