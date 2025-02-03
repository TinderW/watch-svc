# AuthAPI

All URIs are relative to *https://34.227.206.94.sslip.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**accountLogin**](AuthAPI.md#accountlogin) | **POST** /integrations/watch-svc-go/account-login | 
[**createAccount**](AuthAPI.md#createaccount) | **POST** /integrations/watch-svc-go/account | 
[**googleSignIn**](AuthAPI.md#googlesignin) | **POST** /integrations/watch-svc-go/oauth2/google | 
[**refreshReauth**](AuthAPI.md#refreshreauth) | **POST** /integrations/watch-svc-go/refresh-reauth | 


# **accountLogin**
```swift
    open class func accountLogin(loginAccountRequest: LoginAccountRequest, completion: @escaping (_ data: AccountLogin200Response?, _ error: Error?) -> Void)
```



Returns not ouath2 account, usex it in the case when the account`s refresh token was expired

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let loginAccountRequest = LoginAccountRequest(type: "type_example", attributes: LoginAccountRequest_allOf_attributes(email: "email_example", password: "password_example")) // LoginAccountRequest | 

AuthAPI.accountLogin(loginAccountRequest: loginAccountRequest) { (response, error) in
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

# **createAccount**
```swift
    open class func createAccount(createAccountRequest: CreateAccountRequest, completion: @escaping (_ data: AccountLogin200Response?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let createAccountRequest = CreateAccountRequest(type: "type_example", attributes: CreateAccountRequest_allOf_attributes(name: "name_example", secondName: "secondName_example", email: "email_example", password: "password_example", photo: "photo_example")) // CreateAccountRequest | 

AuthAPI.createAccount(createAccountRequest: createAccountRequest) { (response, error) in
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

# **googleSignIn**
```swift
    open class func googleSignIn(tokenId: String, completion: @escaping (_ data: GoogleSignIn200Response?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let tokenId = "tokenId_example" // String | oauth2 auth token

AuthAPI.googleSignIn(tokenId: tokenId) { (response, error) in
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

[**GoogleSignIn200Response**](GoogleSignIn200Response.md)

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

AuthAPI.refreshReauth(refreshToken: refreshToken) { (response, error) in
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

