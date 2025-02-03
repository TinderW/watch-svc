# RatingAPI

All URIs are relative to *https://34.227.206.94.sslip.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createRating**](RatingAPI.md#createrating) | **POST** /integrations/watch-svc-go/rating | 


# **createRating**
```swift
    open class func createRating(accessToken: String, rate: Rate, completion: @escaping (_ data: CreateRating201Response?, _ error: Error?) -> Void)
```



create rating

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let accessToken = "accessToken_example" // String | 
let rate = Rate(type: "type_example", id: "id_example", attributes: Rate_allOf_attributes(rating: 123, timestamp: 123, kind: "kind_example"), relationships: Rate_allOf_relationships(accountId: "accountId_example", instanceId: "instanceId_example")) // Rate | 

RatingAPI.createRating(accessToken: accessToken, rate: rate) { (response, error) in
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
 **rate** | [**Rate**](Rate.md) |  | 

### Return type

[**CreateRating201Response**](CreateRating201Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

