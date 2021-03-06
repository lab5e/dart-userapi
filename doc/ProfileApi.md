# userapi.api.ProfileApi

## Load the API package
```dart
import 'package:userapi/api.dart';
```

All URIs are relative to *https://api.lab5e.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getUserProfile**](ProfileApi.md#getuserprofile) | **GET** /user/profile | Logged in profile


# **getUserProfile**
> UserProfile getUserProfile()

Logged in profile

Show your user profile information

### Example 
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

