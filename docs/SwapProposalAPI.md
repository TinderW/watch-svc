# SwapProposalAPI

All URIs are relative to *https://34.227.206.94.sslip.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createSwapProposal**](SwapProposalAPI.md#createswapproposal) | **POST** /integrations/watch-svc-go/swap-proposal | 
[**getSwapOffersByIds**](SwapProposalAPI.md#getswapoffersbyids) | **GET** /integrations/watch-svc-go/swap-proposal/ids | 
[**getSwapProposalsByOfferId**](SwapProposalAPI.md#getswapproposalsbyofferid) | **GET** /integrations/watch-svc-go/swap-proposal | 
[**setSwapProposalStatus**](SwapProposalAPI.md#setswapproposalstatus) | **POST** /integrations/watch-svc-go/swap-proposal/status | 


# **createSwapProposal**
```swift
    open class func createSwapProposal(accessToken: String, createSwapOfferProposal: CreateSwapOfferProposal, completion: @escaping (_ data: CreateSwapProposal200Response?, _ error: Error?) -> Void)
```



create swap proposal

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let accessToken = "accessToken_example" // String | 
let createSwapOfferProposal = CreateSwapOfferProposal(type: "type_example", id: "id_example", relationships: CreateSwapOfferProposal_allOf_relationships(swapOfferId: "swapOfferId_example"), attributes: CreateSwapOfferProposal_allOf_attributes(swapWatchesId: ["swapWatchesId_example"], offeredWatchesId: ["offeredWatchesId_example"], kind: "kind_example", currency: "currency_example", surchargeValue: 123)) // CreateSwapOfferProposal | 

SwapProposalAPI.createSwapProposal(accessToken: accessToken, createSwapOfferProposal: createSwapOfferProposal) { (response, error) in
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
 **createSwapOfferProposal** | [**CreateSwapOfferProposal**](CreateSwapOfferProposal.md) |  | 

### Return type

[**CreateSwapProposal200Response**](CreateSwapProposal200Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getSwapOffersByIds**
```swift
    open class func getSwapOffersByIds(accessToken: String, offerProposalIds: String? = nil, completion: @escaping (_ data: GetSwapOffersByIds200Response?, _ error: Error?) -> Void)
```



get all the swap proposals by their id

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let accessToken = "accessToken_example" // String | 
let offerProposalIds = "offerProposalIds_example" // String |  (optional)

SwapProposalAPI.getSwapOffersByIds(accessToken: accessToken, offerProposalIds: offerProposalIds) { (response, error) in
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
 **offerProposalIds** | **String** |  | [optional] 

### Return type

[**GetSwapOffersByIds200Response**](GetSwapOffersByIds200Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getSwapProposalsByOfferId**
```swift
    open class func getSwapProposalsByOfferId(accessToken: String, offerId: String? = nil, completion: @escaping (_ data: GetSwapProposalsByOfferId200Response?, _ error: Error?) -> Void)
```



get all the swap proposals by swap offer id

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let accessToken = "accessToken_example" // String | 
let offerId = "offerId_example" // String |  (optional)

SwapProposalAPI.getSwapProposalsByOfferId(accessToken: accessToken, offerId: offerId) { (response, error) in
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

### Return type

[**GetSwapProposalsByOfferId200Response**](GetSwapProposalsByOfferId200Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **setSwapProposalStatus**
```swift
    open class func setSwapProposalStatus(accessToken: String, setOfferProposalStatus: SetOfferProposalStatus, completion: @escaping (_ data: CreateSwapOffer200Response?, _ error: Error?) -> Void)
```



set swap status

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let accessToken = "accessToken_example" // String | 
let setOfferProposalStatus = SetOfferProposalStatus(type: "type_example", id: "id_example", relationships: SetOfferProposalStatus_allOf_relationships(swapProposalId: "swapProposalId_example"), attributes: SetOfferProposalStatus_allOf_attributes(status: "status_example")) // SetOfferProposalStatus | 

SwapProposalAPI.setSwapProposalStatus(accessToken: accessToken, setOfferProposalStatus: setOfferProposalStatus) { (response, error) in
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
 **setOfferProposalStatus** | [**SetOfferProposalStatus**](SetOfferProposalStatus.md) |  | 

### Return type

[**CreateSwapOffer200Response**](CreateSwapOffer200Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

