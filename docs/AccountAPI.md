# AccountAPI

All URIs are relative to *https://34.227.206.94.sslip.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getAccount**](AccountAPI.md#getaccount) | **GET** /integrations/watch-svc-go/account | 
[**searchAccounts**](AccountAPI.md#searchaccounts) | **GET** /integrations/watch-svc-go/account/search | 
[**setLocation**](AccountAPI.md#setlocation) | **POST** /integrations/watch-svc-go/account/location | 


# **getAccount**
```swift
    open class func getAccount(accessToken: String, accountId: String? = nil, completion: @escaping (_ data: GetAccount200Response?, _ error: Error?) -> Void)
```



get account

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let accessToken = "accessToken_example" // String | 
let accountId = "accountId_example" // String |  (optional)

AccountAPI.getAccount(accessToken: accessToken, accountId: accountId) { (response, error) in
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
 **accountId** | **String** |  | [optional] 

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

# **setLocation**
```swift
    open class func setLocation(accessToken: String, setAccountLocation: SetAccountLocation, completion: @escaping (_ data: SetLocation201Response?, _ error: Error?) -> Void)
```



set location

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let accessToken = "accessToken_example" // String | 
let setAccountLocation = SetAccountLocation(type: "type_example", attributes: AccountLocation_allOf_attributes(city: "city_example", region: "region_example", country: "country_example", countryCode: "countryCode_example")) // SetAccountLocation | 

AccountAPI.setLocation(accessToken: accessToken, setAccountLocation: setAccountLocation) { (response, error) in
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
 **setAccountLocation** | [**SetAccountLocation**](SetAccountLocation.md) |  | 

### Return type

[**SetLocation201Response**](SetLocation201Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

