# BrandAPI

All URIs are relative to *https://34.227.206.94.sslip.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**searchBrands**](BrandAPI.md#searchbrands) | **GET** /integrations/watch-svc-go/brand/search | 


# **searchBrands**
```swift
    open class func searchBrands(search: String, completion: @escaping (_ data: SearchBrands200Response?, _ error: Error?) -> Void)
```



searcch brands

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let search = "search_example" // String | 

BrandAPI.searchBrands(search: search) { (response, error) in
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
 **search** | **String** |  | 

### Return type

[**SearchBrands200Response**](SearchBrands200Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

