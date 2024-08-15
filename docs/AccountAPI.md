# AccountAPI

All URIs are relative to *https://34.227.206.94.sslip.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getAccount**](AccountAPI.md#getaccount) | **GET** /integrations/watch-svc-go/account | 
[**searchAccounts**](AccountAPI.md#searchaccounts) | **GET** /integrations/watch-svc-go/account/search | 


# **getAccount**
```swift
    open class func getAccount(accessToken: String, account: String? = nil, completion: @escaping (_ data: GetAccount200Response?, _ error: Error?) -> Void)
```



Returns not ouath2 account, use it in the case when the account`s refresh token was expired

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let accessToken = "accessToken_example" // String | 
let account = "account_example" // String |  (optional)

AccountAPI.getAccount(accessToken: accessToken, account: account) { (response, error) in
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
 **account** | **String** |  | [optional] 

### Return type

[**GetAccount200Response**](GetAccount200Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **searchAccounts**
```swift
    open class func searchAccounts(accessToken: String, search: String, completion: @escaping (_ data: SearchAccounts200Response?, _ error: Error?) -> Void)
```



search accounts

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let accessToken = "accessToken_example" // String | 
let search = "search_example" // String | 

AccountAPI.searchAccounts(accessToken: accessToken, search: search) { (response, error) in
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
 **search** | **String** |  | 

### Return type

[**SearchAccounts200Response**](SearchAccounts200Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

