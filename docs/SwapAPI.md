# SwapAPI

All URIs are relative to *https://34.227.206.94.sslip.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createSwapOffer**](SwapAPI.md#createswapoffer) | **POST** /integrations/watch-svc-go/swap-offer | 
[**getUserSwapOffers**](SwapAPI.md#getuserswapoffers) | **GET** /integrations/watch-svc-go/swap-offer | 
[**setSwapOfferStatus**](SwapAPI.md#setswapofferstatus) | **PUT** /integrations/watch-svc-go/swap-offer | 
[**setWatchSwapStatus**](SwapAPI.md#setwatchswapstatus) | **POST** /integrations/watch-svc-go/watches/swap | 
[**syncSwapOffers**](SwapAPI.md#syncswapoffers) | **POST** /integrations/watch-svc-go/swap-offer/sync | 


# **createSwapOffer**
```swift
    open class func createSwapOffer(accessToken: String, swapOffer: SwapOffer, completion: @escaping (_ data: CreateSwapOffer200Response?, _ error: Error?) -> Void)
```



create swap offer

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let accessToken = "accessToken_example" // String | 
let swapOffer = SwapOffer(type: "type_example", id: "id_example", relationships: SwapOffer_allOf_relationships(initiatorId: "initiatorId_example", sellerId: "sellerId_example", swapWatchId: "swapWatchId_example", offeredWatchId: "offeredWatchId_example"), attributes: SwapOffer_allOf_attributes(kind: "kind_example", status: "status_example", timestamp: 123, currency: "currency_example", surchargeValue: 123)) // SwapOffer | 

SwapAPI.createSwapOffer(accessToken: accessToken, swapOffer: swapOffer) { (response, error) in
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
 **swapOffer** | [**SwapOffer**](SwapOffer.md) |  | 

### Return type

[**CreateSwapOffer200Response**](CreateSwapOffer200Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getUserSwapOffers**
```swift
    open class func getUserSwapOffers(accessToken: String, completion: @escaping (_ data: GetUserSwapOffers200Response?, _ error: Error?) -> Void)
```



get user swap offers

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let accessToken = "accessToken_example" // String | 

SwapAPI.getUserSwapOffers(accessToken: accessToken) { (response, error) in
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

[**GetUserSwapOffers200Response**](GetUserSwapOffers200Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **setSwapOfferStatus**
```swift
    open class func setSwapOfferStatus(accessToken: String, offerId: String? = nil, status: String? = nil, completion: @escaping (_ data: SetSwapOfferStatus200Response?, _ error: Error?) -> Void)
```



update swap offer

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let accessToken = "accessToken_example" // String | 
let offerId = "offerId_example" // String |  (optional)
let status = "status_example" // String |  (optional)

SwapAPI.setSwapOfferStatus(accessToken: accessToken, offerId: offerId, status: status) { (response, error) in
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
 **offerId** | **String** |  | [optional] 
 **status** | **String** |  | [optional] 

### Return type

[**SetSwapOfferStatus200Response**](SetSwapOfferStatus200Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **setWatchSwapStatus**
```swift
    open class func setWatchSwapStatus(swapStatus: Bool, accessToken: String, watchId: String, completion: @escaping (_ data: SetWatchSwapStatus200Response?, _ error: Error?) -> Void)
```



setSwapstatus

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let swapStatus = true // Bool | 
let accessToken = "accessToken_example" // String | 
let watchId = "watchId_example" // String | 

SwapAPI.setWatchSwapStatus(swapStatus: swapStatus, accessToken: accessToken, watchId: watchId) { (response, error) in
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
 **swapStatus** | **Bool** |  | 
 **accessToken** | **String** |  | 
 **watchId** | **String** |  | 

### Return type

[**SetWatchSwapStatus200Response**](SetWatchSwapStatus200Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **syncSwapOffers**
```swift
    open class func syncSwapOffers(accessToken: String, swapStatus: [SwapStatus], completion: @escaping (_ data: SyncSwapOffers200Response?, _ error: Error?) -> Void)
```



sync swapOffers

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let accessToken = "accessToken_example" // String | 
let swapStatus = [SwapStatus(type: "type_example", id: "id_example", attributes: SwapStatus_allOf_attributes(swapStatus: false, timestamp: 123))] // [SwapStatus] | 

SwapAPI.syncSwapOffers(accessToken: accessToken, swapStatus: swapStatus) { (response, error) in
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
 **swapStatus** | [**[SwapStatus]**](SwapStatus.md) |  | 

### Return type

[**SyncSwapOffers200Response**](SyncSwapOffers200Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

