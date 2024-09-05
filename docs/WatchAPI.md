# WatchAPI

All URIs are relative to *https://34.227.206.94.sslip.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**addAccountWatch**](WatchAPI.md#addaccountwatch) | **POST** /integrations/watch-svc-go/account-watches/ | 
[**getAccountWatches**](WatchAPI.md#getaccountwatches) | **GET** /integrations/watch-svc-go/account-watches/ | 
[**getWatchesById**](WatchAPI.md#getwatchesbyid) | **GET** /integrations/watch-svc-go/watches-by-id | 
[**removeAccountWatch**](WatchAPI.md#removeaccountwatch) | **DELETE** /integrations/watch-svc-go/account-watches/ | 
[**searchWatches**](WatchAPI.md#searchwatches) | **GET** /integrations/watch-svc-go/watches | 
[**setWatchSwapStatus**](WatchAPI.md#setwatchswapstatus) | **POST** /integrations/watch-svc-go/watches/swap | 
[**syncAccountWatches**](WatchAPI.md#syncaccountwatches) | **POST** /integrations/watch-svc-go/account-watches/sync | 
[**updateAccountWatch**](WatchAPI.md#updateaccountwatch) | **PUT** /integrations/watch-svc-go/account-watches/ | 


# **addAccountWatch**
```swift
    open class func addAccountWatch(accessToken: String, addWatch: AddWatch, completion: @escaping (_ data: UpdateAccountWatch200Response?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let accessToken = "accessToken_example" // String | 
let addWatch = AddWatch(type: "type_example", id: "id_example", attributes: AddWatch_allOf_attributes(photos: ["photos_example"], reference: "reference_example", model: "model_example", caseMaterial: "caseMaterial_example", dialColor: "dialColor_example", isWorn: false, price: 123, currency: "currency_example", equipment: "equipment_example", notes: "notes_example", brand: "brand_example")) // AddWatch | 

WatchAPI.addAccountWatch(accessToken: accessToken, addWatch: addWatch) { (response, error) in
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
 **addWatch** | [**AddWatch**](AddWatch.md) |  | 

### Return type

[**UpdateAccountWatch200Response**](UpdateAccountWatch200Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getAccountWatches**
```swift
    open class func getAccountWatches(accessToken: String, account: String? = nil, completion: @escaping (_ data: GetAccountWatches200Response?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let accessToken = "accessToken_example" // String | 
let account = "account_example" // String |  (optional)

WatchAPI.getAccountWatches(accessToken: accessToken, account: account) { (response, error) in
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

[**GetAccountWatches200Response**](GetAccountWatches200Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getWatchesById**
```swift
    open class func getWatchesById(accessToken: String, ids: String, completion: @escaping (_ data: GetAccountWatches200Response?, _ error: Error?) -> Void)
```



returns searched watches with account

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let accessToken = "accessToken_example" // String | 
let ids = "ids_example" // String | 

WatchAPI.getWatchesById(accessToken: accessToken, ids: ids) { (response, error) in
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
 **ids** | **String** |  | 

### Return type

[**GetAccountWatches200Response**](GetAccountWatches200Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **removeAccountWatch**
```swift
    open class func removeAccountWatch(watchId: String, accessToken: String, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let watchId = "watchId_example" // String | 
let accessToken = "accessToken_example" // String | 

WatchAPI.removeAccountWatch(watchId: watchId, accessToken: accessToken) { (response, error) in
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

Void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **searchWatches**
```swift
    open class func searchWatches(accessToken: String, search: String, completion: @escaping (_ data: SearchWatches200Response?, _ error: Error?) -> Void)
```



returns searched watches with account

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let accessToken = "accessToken_example" // String | 
let search = "search_example" // String | 

WatchAPI.searchWatches(accessToken: accessToken, search: search) { (response, error) in
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

[**SearchWatches200Response**](SearchWatches200Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **setWatchSwapStatus**
```swift
    open class func setWatchSwapStatus(accessToken: String, watchId: String, status: String? = nil, completion: @escaping (_ data: SetWatchSwapStatus200Response?, _ error: Error?) -> Void)
```



setSwapstatus

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let accessToken = "accessToken_example" // String | 
let watchId = "watchId_example" // String | 
let status = "status_example" // String |  (optional)

WatchAPI.setWatchSwapStatus(accessToken: accessToken, watchId: watchId, status: status) { (response, error) in
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
 **watchId** | **String** |  | 
 **status** | **String** |  | [optional] 

### Return type

[**SetWatchSwapStatus200Response**](SetWatchSwapStatus200Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **syncAccountWatches**
```swift
    open class func syncAccountWatches(accessToken: String, syncAccountWatchesRequest: SyncAccountWatchesRequest, completion: @escaping (_ data: SyncAccountWatches200Response?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let accessToken = "accessToken_example" // String | 
let syncAccountWatchesRequest = SyncAccountWatchesRequest(type: "type_example", id: "id_example", attributes: SyncAccountWatchesRequest_allOf_attributes(watches: [SyncAccountWatchItem(watchId: "watchId_example", timestamp: 123)])) // SyncAccountWatchesRequest | 

WatchAPI.syncAccountWatches(accessToken: accessToken, syncAccountWatchesRequest: syncAccountWatchesRequest) { (response, error) in
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
 **syncAccountWatchesRequest** | [**SyncAccountWatchesRequest**](SyncAccountWatchesRequest.md) |  | 

### Return type

[**SyncAccountWatches200Response**](SyncAccountWatches200Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateAccountWatch**
```swift
    open class func updateAccountWatch(accessToken: String, updateWatch: UpdateWatch, completion: @escaping (_ data: UpdateAccountWatch200Response?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let accessToken = "accessToken_example" // String | 
let updateWatch = UpdateWatch(type: "type_example", id: "id_example", attributes: AddWatch_allOf_attributes(photos: ["photos_example"], reference: "reference_example", model: "model_example", caseMaterial: "caseMaterial_example", dialColor: "dialColor_example", isWorn: false, price: 123, currency: "currency_example", equipment: "equipment_example", notes: "notes_example", brand: "brand_example")) // UpdateWatch | 

WatchAPI.updateAccountWatch(accessToken: accessToken, updateWatch: updateWatch) { (response, error) in
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
 **updateWatch** | [**UpdateWatch**](UpdateWatch.md) |  | 

### Return type

[**UpdateAccountWatch200Response**](UpdateAccountWatch200Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

