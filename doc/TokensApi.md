# lab5e.api.TokensApi

## Load the API package
```dart
import 'package:lab5e/api.dart';
```

All URIs are relative to *https://api.lab5e.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**userCreateToken**](TokensApi.md#usercreatetoken) | **POST** /user/tokens | Create token
[**userDeleteToken**](TokensApi.md#userdeletetoken) | **DELETE** /user/tokens/{token} | Remove token
[**userListTokens**](TokensApi.md#userlisttokens) | **GET** /user/tokens | List tokens
[**userRetrieveToken**](TokensApi.md#userretrievetoken) | **GET** /user/tokens/{token} | Retrieve token
[**userUpdateToken**](TokensApi.md#userupdatetoken) | **PATCH** /user/tokens/{token} | Update token


# **userCreateToken**
> Token userCreateToken(body)

Create token

### Example 
```dart
import 'package:lab5e/api.dart';
// TODO Configure API key authorization: APIToken
//defaultApiClient.getAuthentication<ApiKeyAuth>('APIToken').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('APIToken').apiKeyPrefix = 'Bearer';

final api_instance = TokensApi();
final body = Token(); // Token | 

try { 
    final result = api_instance.userCreateToken(body);
    print(result);
} catch (e) {
    print('Exception when calling TokensApi->userCreateToken: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**Token**](Token.md)|  | 

### Return type

[**Token**](Token.md)

### Authorization

[APIToken](../README.md#APIToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **userDeleteToken**
> Object userDeleteToken(token)

Remove token

### Example 
```dart
import 'package:lab5e/api.dart';
// TODO Configure API key authorization: APIToken
//defaultApiClient.getAuthentication<ApiKeyAuth>('APIToken').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('APIToken').apiKeyPrefix = 'Bearer';

final api_instance = TokensApi();
final token = token_example; // String | The token to delete.

try { 
    final result = api_instance.userDeleteToken(token);
    print(result);
} catch (e) {
    print('Exception when calling TokensApi->userDeleteToken: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **token** | **String**| The token to delete. | 

### Return type

[**Object**](Object.md)

### Authorization

[APIToken](../README.md#APIToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **userListTokens**
> TokenList userListTokens()

List tokens

### Example 
```dart
import 'package:lab5e/api.dart';
// TODO Configure API key authorization: APIToken
//defaultApiClient.getAuthentication<ApiKeyAuth>('APIToken').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('APIToken').apiKeyPrefix = 'Bearer';

final api_instance = TokensApi();

try { 
    final result = api_instance.userListTokens();
    print(result);
} catch (e) {
    print('Exception when calling TokensApi->userListTokens: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**TokenList**](TokenList.md)

### Authorization

[APIToken](../README.md#APIToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **userRetrieveToken**
> Token userRetrieveToken(token)

Retrieve token

### Example 
```dart
import 'package:lab5e/api.dart';
// TODO Configure API key authorization: APIToken
//defaultApiClient.getAuthentication<ApiKeyAuth>('APIToken').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('APIToken').apiKeyPrefix = 'Bearer';

final api_instance = TokensApi();
final token = token_example; // String | 

try { 
    final result = api_instance.userRetrieveToken(token);
    print(result);
} catch (e) {
    print('Exception when calling TokensApi->userRetrieveToken: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **token** | **String**|  | 

### Return type

[**Token**](Token.md)

### Authorization

[APIToken](../README.md#APIToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **userUpdateToken**
> Token userUpdateToken(token, body)

Update token

### Example 
```dart
import 'package:lab5e/api.dart';
// TODO Configure API key authorization: APIToken
//defaultApiClient.getAuthentication<ApiKeyAuth>('APIToken').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('APIToken').apiKeyPrefix = 'Bearer';

final api_instance = TokensApi();
final token = token_example; // String | The token  Use this in the `X-API-Token` header when using the API.
final body = Token(); // Token | 

try { 
    final result = api_instance.userUpdateToken(token, body);
    print(result);
} catch (e) {
    print('Exception when calling TokensApi->userUpdateToken: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **token** | **String**| The token  Use this in the `X-API-Token` header when using the API. | 
 **body** | [**Token**](Token.md)|  | 

### Return type

[**Token**](Token.md)

### Authorization

[APIToken](../README.md#APIToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

