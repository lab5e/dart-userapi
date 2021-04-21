# userapi.api.TokensApi

## Load the API package
```dart
import 'package:userapi/api.dart';
```

All URIs are relative to *https://api.lab5e.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createToken**](TokensApi.md#createtoken) | **POST** /user/tokens | Create token
[**deleteToken**](TokensApi.md#deletetoken) | **DELETE** /user/tokens/{token} | Remove token
[**listTokens**](TokensApi.md#listtokens) | **GET** /user/tokens | List tokens
[**retrieveToken**](TokensApi.md#retrievetoken) | **GET** /user/tokens/{token} | Retrieve token
[**updateToken**](TokensApi.md#updatetoken) | **PATCH** /user/tokens/{token} | Update token


# **createToken**
> Token createToken(body)

Create token

### Example 
```dart
import 'package:userapi/api.dart';
// TODO Configure API key authorization: APIToken
//defaultApiClient.getAuthentication<ApiKeyAuth>('APIToken').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('APIToken').apiKeyPrefix = 'Bearer';

final api_instance = TokensApi();
final body = Token(); // Token | 

try { 
    final result = api_instance.createToken(body);
    print(result);
} catch (e) {
    print('Exception when calling TokensApi->createToken: $e\n');
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

# **deleteToken**
> DeleteTokenResponse deleteToken(token)

Remove token

### Example 
```dart
import 'package:userapi/api.dart';
// TODO Configure API key authorization: APIToken
//defaultApiClient.getAuthentication<ApiKeyAuth>('APIToken').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('APIToken').apiKeyPrefix = 'Bearer';

final api_instance = TokensApi();
final token = token_example; // String | The token to delete.

try { 
    final result = api_instance.deleteToken(token);
    print(result);
} catch (e) {
    print('Exception when calling TokensApi->deleteToken: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **token** | **String**| The token to delete. | 

### Return type

[**DeleteTokenResponse**](DeleteTokenResponse.md)

### Authorization

[APIToken](../README.md#APIToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listTokens**
> TokenList listTokens()

List tokens

### Example 
```dart
import 'package:userapi/api.dart';
// TODO Configure API key authorization: APIToken
//defaultApiClient.getAuthentication<ApiKeyAuth>('APIToken').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('APIToken').apiKeyPrefix = 'Bearer';

final api_instance = TokensApi();

try { 
    final result = api_instance.listTokens();
    print(result);
} catch (e) {
    print('Exception when calling TokensApi->listTokens: $e\n');
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

# **retrieveToken**
> Token retrieveToken(token)

Retrieve token

### Example 
```dart
import 'package:userapi/api.dart';
// TODO Configure API key authorization: APIToken
//defaultApiClient.getAuthentication<ApiKeyAuth>('APIToken').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('APIToken').apiKeyPrefix = 'Bearer';

final api_instance = TokensApi();
final token = token_example; // String | 

try { 
    final result = api_instance.retrieveToken(token);
    print(result);
} catch (e) {
    print('Exception when calling TokensApi->retrieveToken: $e\n');
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

# **updateToken**
> Token updateToken(token, body)

Update token

### Example 
```dart
import 'package:userapi/api.dart';
// TODO Configure API key authorization: APIToken
//defaultApiClient.getAuthentication<ApiKeyAuth>('APIToken').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('APIToken').apiKeyPrefix = 'Bearer';

final api_instance = TokensApi();
final token = token_example; // String | The token  Use this in the `X-API-Token` header when using the API.
final body = Token(); // Token | 

try { 
    final result = api_instance.updateToken(token, body);
    print(result);
} catch (e) {
    print('Exception when calling TokensApi->updateToken: $e\n');
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

