# lab5e.model.Token

## Load the model package
```dart
import 'package:lab5e/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**resource** | **String** | The resource of the token.  The token applies to the specified resource and any resources below this so the resource `/` applies to the root resource and any resource below the root resource. In the same manner `/collections` will apply to all collectins while `/collections/{id}` will apply to that particular collection. | [optional] 
**write** | **bool** | Write flag for token.  If this is set to `true` the token can be used for write operations in the API such as POST, DELETE and PATCH. | [optional] 
**token** | **String** | Use this in the `X-API-Token` header when using the API. | [optional] 
**tags** | **Map<String, String>** | Tags for the token. | [optional] [default to const {}]
**lastUse** | **String** | The last time the token was used. Time in ms since epoch. | [optional] 
**uses** | **String** |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


