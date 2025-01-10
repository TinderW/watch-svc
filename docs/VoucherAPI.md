# VoucherAPI

All URIs are relative to *https://34.227.206.94.sslip.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getUserVouchers**](VoucherAPI.md#getuservouchers) | **GET** /integrations/watch-svc-go/vauchers/user | 


# **getUserVouchers**
```swift
    open class func getUserVouchers(accessToken: String, pageSize: Int? = nil, pageNumber: Int? = nil, completion: @escaping (_ data: GetUserVouchers200Response?, _ error: Error?) -> Void)
```



returns user vouchers

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let accessToken = "accessToken_example" // String | 
let pageSize = 987 // Int |  (optional) (default to 15)
let pageNumber = 987 // Int | The number of a page to return. (optional)

VoucherAPI.getUserVouchers(accessToken: accessToken, pageSize: pageSize, pageNumber: pageNumber) { (response, error) in
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
 **pageSize** | **Int** |  | [optional] [default to 15]
 **pageNumber** | **Int** | The number of a page to return. | [optional] 

### Return type

[**GetUserVouchers200Response**](GetUserVouchers200Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

