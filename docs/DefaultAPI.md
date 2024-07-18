# DefaultAPI

All URIs are relative to *https://34.227.206.94.sslip.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**accountLogin**](DefaultAPI.md#accountlogin) | **POST** /integrations/watch-svc-go/account-login | 
[**addAccountWatch**](DefaultAPI.md#addaccountwatch) | **POST** /integrations/watch-svc-go/account-watches/ | 
[**createAccount**](DefaultAPI.md#createaccount) | **POST** /integrations/watch-svc-go/account | 
[**createSwapOffer**](DefaultAPI.md#createswapoffer) | **POST** /integrations/watch-svc-go/swap-offer | 
[**getAccount**](DefaultAPI.md#getaccount) | **GET** /integrations/watch-svc-go/account | 
[**getAccountWatches**](DefaultAPI.md#getaccountwatches) | **GET** /integrations/watch-svc-go/account-watches/ | 
[**getUserSwapOffers**](DefaultAPI.md#getuserswapoffers) | **GET** /integrations/watch-svc-go/swap-offer | 
[**getWatchesByIds**](DefaultAPI.md#getwatchesbyids) | **GET** /integrations/watch-svc-go/watches/ids | 
[**googleSignIn**](DefaultAPI.md#googlesignin) | **POST** /integrations/watch-svc-go/oauth2/google | 
[**refreshReauth**](DefaultAPI.md#refreshreauth) | **POST** /integrations/watch-svc-go/refresh-reauth | 
[**removeAccountWatch**](DefaultAPI.md#removeaccountwatch) | **DELETE** /integrations/watch-svc-go/account-watches/ | 
[**searchAccounts**](DefaultAPI.md#searchaccounts) | **GET** /integrations/watch-svc-go/account/search | 
[**searchBrands**](DefaultAPI.md#searchbrands) | **GET** /integrations/watch-svc-go/brand/search | 
[**searchWatches**](DefaultAPI.md#searchwatches) | **GET** /integrations/watch-svc-go/watches | 
[**setSwapOfferStatus**](DefaultAPI.md#setswapofferstatus) | **PUT** /integrations/watch-svc-go/swap-offer | 
[**setWatchSwapStatus**](DefaultAPI.md#setwatchswapstatus) | **POST** /integrations/watch-svc-go/watches/swap | 
[**syncAccountWatches**](DefaultAPI.md#syncaccountwatches) | **POST** /integrations/watch-svc-go/account-watches/sync | 
[**syncSwapOffers**](DefaultAPI.md#syncswapoffers) | **POST** /integrations/watch-svc-go/swap-offer/sync | 
[**updateAccountWatch**](DefaultAPI.md#updateaccountwatch) | **PUT** /integrations/watch-svc-go/account-watches/ | 


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
    open class func addAccountWatch(accessToken: String, addWatch: AddWatch, completion: @escaping (_ data: UpdateAccountWatch200Response?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let accessToken = "accessToken_example" // String | 
let addWatch = AddWatch(type: "type_example", id: "id_example", attributes: AddWatch_allOf_attributes(photos: ["photos_example"], reference: "reference_example", model: "model_example", caseMaterial: "caseMaterial_example", dialColor: "dialColor_example", isWorn: false, price: 123, currency: "currency_example", equipment: "equipment_example", notes: "notes_example", brand: "brand_example")) // AddWatch | 

DefaultAPI.addAccountWatch(accessToken: accessToken, addWatch: addWatch) { (response, error) in
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

DefaultAPI.createSwapOffer(accessToken: accessToken, swapOffer: swapOffer) { (response, error) in
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

DefaultAPI.getAccount(accessToken: accessToken, account: account) { (response, error) in
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

DefaultAPI.getAccountWatches(accessToken: accessToken, account: account) { (response, error) in
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

DefaultAPI.getUserSwapOffers(accessToken: accessToken) { (response, error) in
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

# **getWatchesByIds**
```swift
    open class func getWatchesByIds(accessToken: String, watchId: String, completion: @escaping (_ data: SearchWatches200Response?, _ error: Error?) -> Void)
```



return watches from passed ids

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let accessToken = "accessToken_example" // String | 
let watchId = "watchId_example" // String | 

DefaultAPI.getWatchesByIds(accessToken: accessToken, watchId: watchId) { (response, error) in
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

### Return type

[**SearchWatches200Response**](SearchWatches200Response.md)

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
    open class func removeAccountWatch(watchId: String, accessToken: String, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
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

Void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

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

DefaultAPI.searchAccounts(accessToken: accessToken, search: search) { (response, error) in
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

DefaultAPI.searchBrands(search: search) { (response, error) in
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

DefaultAPI.searchWatches(accessToken: accessToken, search: search) { (response, error) in
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

DefaultAPI.setSwapOfferStatus(accessToken: accessToken, offerId: offerId, status: status) { (response, error) in
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

DefaultAPI.setWatchSwapStatus(swapStatus: swapStatus, accessToken: accessToken, watchId: watchId) { (response, error) in
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

DefaultAPI.syncAccountWatches(accessToken: accessToken, syncAccountWatchesRequest: syncAccountWatchesRequest) { (response, error) in
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

DefaultAPI.syncSwapOffers(accessToken: accessToken, swapStatus: swapStatus) { (response, error) in
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

DefaultAPI.updateAccountWatch(accessToken: accessToken, updateWatch: updateWatch) { (response, error) in
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

