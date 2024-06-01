# DefaultAPI

All URIs are relative to *https://34c8-185-46-149-146.ngrok-free.app*

Method | HTTP request | Description
------------- | ------------- | -------------
[**accountLogin**](DefaultAPI.md#accountlogin) | **POST** /integrations/watch-svc-go/account-login | 
[**addAccountWatch**](DefaultAPI.md#addaccountwatch) | **POST** /integrations/watch-svc-go/account-watches/ | 
[**createAccount**](DefaultAPI.md#createaccount) | **POST** /integrations/watch-svc-go/account | 
[**getAccount**](DefaultAPI.md#getaccount) | **GET** /integrations/watch-svc-go/account | 
[**getAccountWatches**](DefaultAPI.md#getaccountwatches) | **GET** /integrations/watch-svc-go/account-watches/ | 
[**googleSignIn**](DefaultAPI.md#googlesignin) | **POST** /integrations/watch-svc-go/oauth2/google | 
[**refreshReauth**](DefaultAPI.md#refreshreauth) | **POST** /integrations/watch-svc-go/refresh-reauth | 
[**removeAccountWatch**](DefaultAPI.md#removeaccountwatch) | **DELETE** /integrations/watch-svc-go/account-watches/ | 


# **accountLogin**
```swift
    open class func accountLogin(loginAccountRequest: LoginAccountRequest, completion: @escaping (_ data: AccountLogin200Response?, _ error: Error?) -> Void)
```



Returns not ouath2 account, use it in the case when the account`s refresh token was expired

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let loginAccountRequest = LoginAccountRequest(type: "type_example", attributes: LoginAccountRequest_allOf_attributes(email: "email_example", password: "password_example")) // LoginAccountRequest | 

DefaultAPI.accountLogin(loginAccountRequest: loginAccountRequest) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **loginAccountRequest** | [**LoginAccountRequest**](LoginAccountRequest.md) |  | 

### Return type

[**AccountLogin200Response**](AccountLogin200Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **addAccountWatch**
```swift
    open class func addAccountWatch(accessToken: String, watch: Watch, completion: @escaping (_ data: AddAccountWatch201Response?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let accessToken = "accessToken_example" // String | 
let watch = Watch(type: "type_example", relationships: Watch_allOf_relationships(accountId: "accountId_example"), attributes: Watch_allOf_attributes(watchId: "watchId_example", photos: ["photos_example"], reference: "reference_example", model: "model_example", caseMaterial: "caseMaterial_example", dialColor: "dialColor_example", isWorn: false, price: 123, currency: "currency_example", equipment: "equipment_example", notes: "notes_example", brand: "brand_example", timestamp: 123)) // Watch | 

DefaultAPI.addAccountWatch(accessToken: accessToken, watch: watch) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **accessToken** | **String** |  | 
 **watch** | [**Watch**](Watch.md) |  | 

### Return type

[**AddAccountWatch201Response**](AddAccountWatch201Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createAccount**
```swift
    open class func createAccount(createAccountRequest: CreateAccountRequest, completion: @escaping (_ data: AccountLogin200Response?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let createAccountRequest = CreateAccountRequest(type: "type_example", attributes: CreateAccountRequest_allOf_attributes(name: "name_example", secondName: "secondName_example", email: "email_example", password: "password_example", photo: "photo_example")) // CreateAccountRequest | 

DefaultAPI.createAccount(createAccountRequest: createAccountRequest) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **createAccountRequest** | [**CreateAccountRequest**](CreateAccountRequest.md) |  | 

### Return type

[**AccountLogin200Response**](AccountLogin200Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getAccount**
```swift
    open class func getAccount(accessToken: String, completion: @escaping (_ data: GetAccount200Response?, _ error: Error?) -> Void)
```



Returns not ouath2 account, use it in the case when the account`s refresh token was expired

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let accessToken = "accessToken_example" // String | 

DefaultAPI.getAccount(accessToken: accessToken) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **accessToken** | **String** |  | 

### Return type

[**GetAccount200Response**](GetAccount200Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getAccountWatches**
```swift
    open class func getAccountWatches(accessToken: String, completion: @escaping (_ data: GetAccountWatches200Response?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let accessToken = "accessToken_example" // String | 

DefaultAPI.getAccountWatches(accessToken: accessToken) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **accessToken** | **String** |  | 

### Return type

[**GetAccountWatches200Response**](GetAccountWatches200Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **googleSignIn**
```swift
    open class func googleSignIn(tokenId: String, completion: @escaping (_ data: AccountLogin200Response?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let tokenId = "tokenId_example" // String | oauth2 auth token

DefaultAPI.googleSignIn(tokenId: tokenId) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tokenId** | **String** | oauth2 auth token | 

### Return type

[**AccountLogin200Response**](AccountLogin200Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **refreshReauth**
```swift
    open class func refreshReauth(refreshToken: String, completion: @escaping (_ data: AccountLogin200Response?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let refreshToken = "refreshToken_example" // String | 

DefaultAPI.refreshReauth(refreshToken: refreshToken) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **refreshToken** | **String** |  | 

### Return type

[**AccountLogin200Response**](AccountLogin200Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **removeAccountWatch**
```swift
    open class func removeAccountWatch(watchId: String, accessToken: String, completion: @escaping (_ data: Errors?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let watchId = "watchId_example" // String | 
let accessToken = "accessToken_example" // String | 

DefaultAPI.removeAccountWatch(watchId: watchId, accessToken: accessToken) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **watchId** | **String** |  | 
 **accessToken** | **String** |  | 

### Return type

[**Errors**](Errors.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)
