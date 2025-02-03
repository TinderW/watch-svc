# Swift5 API client for OpenAPIClient

No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)

## Overview
This API client was generated by the [OpenAPI Generator](https://openapi-generator.tech) project.  By using the [openapi-spec](https://github.com/OAI/OpenAPI-Specification) from a remote server, you can easily generate an API client.

- API version: 1.0.0
- Package version: 
- Generator version: 7.9.0
- Build package: org.openapitools.codegen.languages.Swift5ClientCodegen

## Installation

### Carthage

Run `carthage update`

### CocoaPods

Run `pod install`

## Documentation for API Endpoints

All URIs are relative to *https://34.227.206.94.sslip.io*

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
*AccountAPI* | [**getAccount**](docs/AccountAPI.md#getaccount) | **GET** /integrations/watch-svc-go/account | 
*AccountAPI* | [**searchAccounts**](docs/AccountAPI.md#searchaccounts) | **GET** /integrations/watch-svc-go/account/search | 
*AuthAPI* | [**accountLogin**](docs/AuthAPI.md#accountlogin) | **POST** /integrations/watch-svc-go/account-login | 
*AuthAPI* | [**createAccount**](docs/AuthAPI.md#createaccount) | **POST** /integrations/watch-svc-go/account | 
*AuthAPI* | [**googleSignIn**](docs/AuthAPI.md#googlesignin) | **POST** /integrations/watch-svc-go/oauth2/google | 
*AuthAPI* | [**refreshReauth**](docs/AuthAPI.md#refreshreauth) | **POST** /integrations/watch-svc-go/refresh-reauth | 
*BrandAPI* | [**searchBrands**](docs/BrandAPI.md#searchbrands) | **GET** /integrations/watch-svc-go/brand/search | 
*RatingAPI* | [**createRating**](docs/RatingAPI.md#createrating) | **POST** /integrations/watch-svc-go/rating | 
*SwapAPI* | [**createSwapOffer**](docs/SwapAPI.md#createswapoffer) | **POST** /integrations/watch-svc-go/swap-offer | 
*SwapAPI* | [**getSwapOffers**](docs/SwapAPI.md#getswapoffers) | **GET** /integrations/watch-svc-go/swap-offer/admin | 
*SwapAPI* | [**getUserSwapOffers**](docs/SwapAPI.md#getuserswapoffers) | **GET** /integrations/watch-svc-go/swap-offer | 
*SwapAPI* | [**setSwapOfferStatus**](docs/SwapAPI.md#setswapofferstatus) | **PUT** /integrations/watch-svc-go/swap-offer | 
*SwapAPI* | [**syncSwapOffers**](docs/SwapAPI.md#syncswapoffers) | **POST** /integrations/watch-svc-go/swap-offer/sync | 
*SwapProposalAPI* | [**createSwapProposal**](docs/SwapProposalAPI.md#createswapproposal) | **POST** /integrations/watch-svc-go/swap-proposal | 
*SwapProposalAPI* | [**getSwapOffersByIds**](docs/SwapProposalAPI.md#getswapoffersbyids) | **GET** /integrations/watch-svc-go/swap-proposal/ids | 
*SwapProposalAPI* | [**getSwapProposalsByOfferId**](docs/SwapProposalAPI.md#getswapproposalsbyofferid) | **GET** /integrations/watch-svc-go/swap-proposal | 
*SwapProposalAPI* | [**setSwapProposalStatus**](docs/SwapProposalAPI.md#setswapproposalstatus) | **POST** /integrations/watch-svc-go/swap-proposal/status | 
*VoucherAPI* | [**getUserVouchers**](docs/VoucherAPI.md#getuservouchers) | **GET** /integrations/watch-svc-go/vauchers/user | 
*WatchAPI* | [**addAccountWatch**](docs/WatchAPI.md#addaccountwatch) | **POST** /integrations/watch-svc-go/account-watches/ | 
*WatchAPI* | [**getAccountWatches**](docs/WatchAPI.md#getaccountwatches) | **GET** /integrations/watch-svc-go/account-watches/ | 
*WatchAPI* | [**getWatchesById**](docs/WatchAPI.md#getwatchesbyid) | **GET** /integrations/watch-svc-go/watches-by-id | 
*WatchAPI* | [**removeAccountWatch**](docs/WatchAPI.md#removeaccountwatch) | **DELETE** /integrations/watch-svc-go/account-watches/ | 
*WatchAPI* | [**searchWatches**](docs/WatchAPI.md#searchwatches) | **GET** /integrations/watch-svc-go/watches | 
*WatchAPI* | [**setWatchSwapStatus**](docs/WatchAPI.md#setwatchswapstatus) | **POST** /integrations/watch-svc-go/watches/swap | 
*WatchAPI* | [**syncAccountWatches**](docs/WatchAPI.md#syncaccountwatches) | **POST** /integrations/watch-svc-go/account-watches/sync | 
*WatchAPI* | [**updateAccountWatch**](docs/WatchAPI.md#updateaccountwatch) | **PUT** /integrations/watch-svc-go/account-watches/ | 


## Documentation For Models

 - [Account](docs/Account.md)
 - [AccountAllOfAttributes](docs/AccountAllOfAttributes.md)
 - [AccountKey](docs/AccountKey.md)
 - [AccountLogin200Response](docs/AccountLogin200Response.md)
 - [AccountLogin200ResponseIncludedInner](docs/AccountLogin200ResponseIncludedInner.md)
 - [AddWatch](docs/AddWatch.md)
 - [AddWatchAllOfAttributes](docs/AddWatchAllOfAttributes.md)
 - [AddWatchKey](docs/AddWatchKey.md)
 - [BasicRating](docs/BasicRating.md)
 - [BasicRatingAllOfAttributes](docs/BasicRatingAllOfAttributes.md)
 - [BasicRatingAllOfRelationships](docs/BasicRatingAllOfRelationships.md)
 - [BasicRatingKey](docs/BasicRatingKey.md)
 - [Brand](docs/Brand.md)
 - [BrandAllOfAttributes](docs/BrandAllOfAttributes.md)
 - [BrandKey](docs/BrandKey.md)
 - [CreateAccountRequest](docs/CreateAccountRequest.md)
 - [CreateAccountRequestAllOfAttributes](docs/CreateAccountRequestAllOfAttributes.md)
 - [CreateAccountRequestKey](docs/CreateAccountRequestKey.md)
 - [CreateRating201Response](docs/CreateRating201Response.md)
 - [CreateSwapOffer200Response](docs/CreateSwapOffer200Response.md)
 - [CreateSwapOfferProposal](docs/CreateSwapOfferProposal.md)
 - [CreateSwapOfferProposalAllOfAttributes](docs/CreateSwapOfferProposalAllOfAttributes.md)
 - [CreateSwapOfferProposalAllOfRelationships](docs/CreateSwapOfferProposalAllOfRelationships.md)
 - [CreateSwapOfferProposalKey](docs/CreateSwapOfferProposalKey.md)
 - [CreateSwapProposal200Response](docs/CreateSwapProposal200Response.md)
 - [Errors](docs/Errors.md)
 - [ErrorsErrorsInner](docs/ErrorsErrorsInner.md)
 - [GetAccount200Response](docs/GetAccount200Response.md)
 - [GetAccount200ResponseIncludedInner](docs/GetAccount200ResponseIncludedInner.md)
 - [GetAccountWatches200Response](docs/GetAccountWatches200Response.md)
 - [GetSwapOffersByIds200Response](docs/GetSwapOffersByIds200Response.md)
 - [GetSwapProposalsByOfferId200Response](docs/GetSwapProposalsByOfferId200Response.md)
 - [GetUserSwapOffers200Response](docs/GetUserSwapOffers200Response.md)
 - [GetUserSwapOffers200ResponseIncludedInner](docs/GetUserSwapOffers200ResponseIncludedInner.md)
 - [GetUserVouchers200Response](docs/GetUserVouchers200Response.md)
 - [GoogleSignIn200Response](docs/GoogleSignIn200Response.md)
 - [LoginAccountRequest](docs/LoginAccountRequest.md)
 - [LoginAccountRequestAllOfAttributes](docs/LoginAccountRequestAllOfAttributes.md)
 - [LoginAccountRequestKey](docs/LoginAccountRequestKey.md)
 - [Rate](docs/Rate.md)
 - [RateAllOfAttributes](docs/RateAllOfAttributes.md)
 - [RateAllOfRelationships](docs/RateAllOfRelationships.md)
 - [RateKey](docs/RateKey.md)
 - [SearchAccounts200Response](docs/SearchAccounts200Response.md)
 - [SearchBrands200Response](docs/SearchBrands200Response.md)
 - [SearchWatches200Response](docs/SearchWatches200Response.md)
 - [SetOfferProposalStatus](docs/SetOfferProposalStatus.md)
 - [SetOfferProposalStatusAllOfAttributes](docs/SetOfferProposalStatusAllOfAttributes.md)
 - [SetOfferProposalStatusAllOfRelationships](docs/SetOfferProposalStatusAllOfRelationships.md)
 - [SetOfferProposalStatusKey](docs/SetOfferProposalStatusKey.md)
 - [SetSwapOfferStatus200Response](docs/SetSwapOfferStatus200Response.md)
 - [SetWatchSwapStatus200Response](docs/SetWatchSwapStatus200Response.md)
 - [SignInResponse](docs/SignInResponse.md)
 - [SignInResponseAllOfAttributes](docs/SignInResponseAllOfAttributes.md)
 - [SignInResponseKey](docs/SignInResponseKey.md)
 - [SwapOffer](docs/SwapOffer.md)
 - [SwapOfferAllOfAttributes](docs/SwapOfferAllOfAttributes.md)
 - [SwapOfferAllOfRelationships](docs/SwapOfferAllOfRelationships.md)
 - [SwapOfferKey](docs/SwapOfferKey.md)
 - [SwapProposalOffer](docs/SwapProposalOffer.md)
 - [SwapProposalOfferAllOfAttributes](docs/SwapProposalOfferAllOfAttributes.md)
 - [SwapProposalOfferAllOfRelationships](docs/SwapProposalOfferAllOfRelationships.md)
 - [SwapProposalOfferKey](docs/SwapProposalOfferKey.md)
 - [SwapStatus](docs/SwapStatus.md)
 - [SwapStatusAllOfAttributes](docs/SwapStatusAllOfAttributes.md)
 - [SwapStatusKey](docs/SwapStatusKey.md)
 - [SyncAccountSwapOffers](docs/SyncAccountSwapOffers.md)
 - [SyncAccountSwapOffersAllOfAttributes](docs/SyncAccountSwapOffersAllOfAttributes.md)
 - [SyncAccountSwapOffersKey](docs/SyncAccountSwapOffersKey.md)
 - [SyncAccountWatchItem](docs/SyncAccountWatchItem.md)
 - [SyncAccountWatches](docs/SyncAccountWatches.md)
 - [SyncAccountWatches200Response](docs/SyncAccountWatches200Response.md)
 - [SyncAccountWatchesAllOfAttributes](docs/SyncAccountWatchesAllOfAttributes.md)
 - [SyncAccountWatchesRequest](docs/SyncAccountWatchesRequest.md)
 - [SyncAccountWatchesRequestAllOfAttributes](docs/SyncAccountWatchesRequestAllOfAttributes.md)
 - [SyncAccountWatchesRequestKey](docs/SyncAccountWatchesRequestKey.md)
 - [SyncAccountWatchesResponseKey](docs/SyncAccountWatchesResponseKey.md)
 - [SyncSwapOffers200Response](docs/SyncSwapOffers200Response.md)
 - [UpdateAccountWatch200Response](docs/UpdateAccountWatch200Response.md)
 - [UpdateWatch](docs/UpdateWatch.md)
 - [UpdateWatchKey](docs/UpdateWatchKey.md)
 - [Voucher](docs/Voucher.md)
 - [VoucherAllOfAttributes](docs/VoucherAllOfAttributes.md)
 - [VoucherAllOfRelationships](docs/VoucherAllOfRelationships.md)
 - [VoucherKey](docs/VoucherKey.md)
 - [Watch](docs/Watch.md)
 - [WatchAllOfAttributes](docs/WatchAllOfAttributes.md)
 - [WatchAllOfRelationships](docs/WatchAllOfRelationships.md)
 - [WatchKey](docs/WatchKey.md)


<a id="documentation-for-authorization"></a>
## Documentation For Authorization

Endpoints do not require authorization.


## Author



