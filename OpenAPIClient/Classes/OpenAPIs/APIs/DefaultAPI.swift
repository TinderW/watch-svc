//
// DefaultAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

open class DefaultAPI {

    /**

     - parameter loginAccountRequest: (body)  
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func accountLogin(loginAccountRequest: LoginAccountRequest, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: AccountLogin200Response?, _ error: Error?) -> Void)) -> RequestTask {
        return accountLoginWithRequestBuilder(loginAccountRequest: loginAccountRequest).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     - POST /integrations/watch-svc-go/account-login
     - Returns not ouath2 account, usex it in the case when the account`s refresh token was expired
     - parameter loginAccountRequest: (body)  
     - returns: RequestBuilder<AccountLogin200Response> 
     */
    open class func accountLoginWithRequestBuilder(loginAccountRequest: LoginAccountRequest) -> RequestBuilder<AccountLogin200Response> {
        let localVariablePath = "/integrations/watch-svc-go/account-login"
        let localVariableURLString = OpenAPIClientAPI.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: loginAccountRequest)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            "Content-Type": "application/json",
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<AccountLogin200Response>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: false)
    }

    /**

     - parameter accessToken: (header)  
     - parameter watch: (body)  
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func addAccountWatch(accessToken: String, watch: Watch, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: UpdateAccountWatch201Response?, _ error: Error?) -> Void)) -> RequestTask {
        return addAccountWatchWithRequestBuilder(accessToken: accessToken, watch: watch).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     - POST /integrations/watch-svc-go/account-watches/
     - parameter accessToken: (header)  
     - parameter watch: (body)  
     - returns: RequestBuilder<UpdateAccountWatch201Response> 
     */
    open class func addAccountWatchWithRequestBuilder(accessToken: String, watch: Watch) -> RequestBuilder<UpdateAccountWatch201Response> {
        let localVariablePath = "/integrations/watch-svc-go/account-watches/"
        let localVariableURLString = OpenAPIClientAPI.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: watch)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            "Content-Type": "application/json",
            "access-token": accessToken.encodeToJSON(),
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<UpdateAccountWatch201Response>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: false)
    }

    /**

     - parameter createAccountRequest: (body)  
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func createAccount(createAccountRequest: CreateAccountRequest, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: AccountLogin200Response?, _ error: Error?) -> Void)) -> RequestTask {
        return createAccountWithRequestBuilder(createAccountRequest: createAccountRequest).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     - POST /integrations/watch-svc-go/account
     - parameter createAccountRequest: (body)  
     - returns: RequestBuilder<AccountLogin200Response> 
     */
    open class func createAccountWithRequestBuilder(createAccountRequest: CreateAccountRequest) -> RequestBuilder<AccountLogin200Response> {
        let localVariablePath = "/integrations/watch-svc-go/account"
        let localVariableURLString = OpenAPIClientAPI.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: createAccountRequest)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            "Content-Type": "application/json",
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<AccountLogin200Response>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: false)
    }

    /**

     - parameter accessToken: (header)  
     - parameter swapOffer: (body)  
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func createSwapOffer(accessToken: String, swapOffer: SwapOffer, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: CreateSwapOffer200Response?, _ error: Error?) -> Void)) -> RequestTask {
        return createSwapOfferWithRequestBuilder(accessToken: accessToken, swapOffer: swapOffer).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     - POST /integrations/watch-svc-go/swap-offer
     - create swap offer
     - parameter accessToken: (header)  
     - parameter swapOffer: (body)  
     - returns: RequestBuilder<CreateSwapOffer200Response> 
     */
    open class func createSwapOfferWithRequestBuilder(accessToken: String, swapOffer: SwapOffer) -> RequestBuilder<CreateSwapOffer200Response> {
        let localVariablePath = "/integrations/watch-svc-go/swap-offer"
        let localVariableURLString = OpenAPIClientAPI.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: swapOffer)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            "Content-Type": "application/json",
            "access-token": accessToken.encodeToJSON(),
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<CreateSwapOffer200Response>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: false)
    }

    /**

     - parameter accessToken: (header)  
     - parameter account: (query)  (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func getAccount(accessToken: String, account: String? = nil, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: GetAccount200Response?, _ error: Error?) -> Void)) -> RequestTask {
        return getAccountWithRequestBuilder(accessToken: accessToken, account: account).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     - GET /integrations/watch-svc-go/account
     - Returns not ouath2 account, use it in the case when the account`s refresh token was expired
     - parameter accessToken: (header)  
     - parameter account: (query)  (optional)
     - returns: RequestBuilder<GetAccount200Response> 
     */
    open class func getAccountWithRequestBuilder(accessToken: String, account: String? = nil) -> RequestBuilder<GetAccount200Response> {
        let localVariablePath = "/integrations/watch-svc-go/account"
        let localVariableURLString = OpenAPIClientAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "account": (wrappedValue: account?.encodeToJSON(), isExplode: true),
        ])

        let localVariableNillableHeaders: [String: Any?] = [
            "access-token": accessToken.encodeToJSON(),
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<GetAccount200Response>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: false)
    }

    /**

     - parameter accessToken: (header)  
     - parameter account: (query)  (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func getAccountWatches(accessToken: String, account: String? = nil, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: GetAccountWatches200Response?, _ error: Error?) -> Void)) -> RequestTask {
        return getAccountWatchesWithRequestBuilder(accessToken: accessToken, account: account).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     - GET /integrations/watch-svc-go/account-watches/
     - parameter accessToken: (header)  
     - parameter account: (query)  (optional)
     - returns: RequestBuilder<GetAccountWatches200Response> 
     */
    open class func getAccountWatchesWithRequestBuilder(accessToken: String, account: String? = nil) -> RequestBuilder<GetAccountWatches200Response> {
        let localVariablePath = "/integrations/watch-svc-go/account-watches/"
        let localVariableURLString = OpenAPIClientAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "account": (wrappedValue: account?.encodeToJSON(), isExplode: true),
        ])

        let localVariableNillableHeaders: [String: Any?] = [
            "access-token": accessToken.encodeToJSON(),
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<GetAccountWatches200Response>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: false)
    }

    /**

     - parameter accessToken: (header)  
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func getUserSwapOffers(accessToken: String, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: GetUserSwapOffers200Response?, _ error: Error?) -> Void)) -> RequestTask {
        return getUserSwapOffersWithRequestBuilder(accessToken: accessToken).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     - GET /integrations/watch-svc-go/swap-offer
     - get user swap offers
     - parameter accessToken: (header)  
     - returns: RequestBuilder<GetUserSwapOffers200Response> 
     */
    open class func getUserSwapOffersWithRequestBuilder(accessToken: String) -> RequestBuilder<GetUserSwapOffers200Response> {
        let localVariablePath = "/integrations/watch-svc-go/swap-offer"
        let localVariableURLString = OpenAPIClientAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            "access-token": accessToken.encodeToJSON(),
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<GetUserSwapOffers200Response>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: false)
    }

    /**

     - parameter accessToken: (header)  
     - parameter watchId: (query)  
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func getWatchesByIds(accessToken: String, watchId: String, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: GetAccountWatches200Response?, _ error: Error?) -> Void)) -> RequestTask {
        return getWatchesByIdsWithRequestBuilder(accessToken: accessToken, watchId: watchId).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     - GET /integrations/watch-svc-go/watches/ids
     - return watches from passed ids
     - parameter accessToken: (header)  
     - parameter watchId: (query)  
     - returns: RequestBuilder<GetAccountWatches200Response> 
     */
    open class func getWatchesByIdsWithRequestBuilder(accessToken: String, watchId: String) -> RequestBuilder<GetAccountWatches200Response> {
        let localVariablePath = "/integrations/watch-svc-go/watches/ids"
        let localVariableURLString = OpenAPIClientAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "watch-id": (wrappedValue: watchId.encodeToJSON(), isExplode: true),
        ])

        let localVariableNillableHeaders: [String: Any?] = [
            "access-token": accessToken.encodeToJSON(),
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<GetAccountWatches200Response>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: false)
    }

    /**

     - parameter tokenId: (header) oauth2 auth token 
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func googleSignIn(tokenId: String, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: AccountLogin200Response?, _ error: Error?) -> Void)) -> RequestTask {
        return googleSignInWithRequestBuilder(tokenId: tokenId).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     - POST /integrations/watch-svc-go/oauth2/google
     - parameter tokenId: (header) oauth2 auth token 
     - returns: RequestBuilder<AccountLogin200Response> 
     */
    open class func googleSignInWithRequestBuilder(tokenId: String) -> RequestBuilder<AccountLogin200Response> {
        let localVariablePath = "/integrations/watch-svc-go/oauth2/google"
        let localVariableURLString = OpenAPIClientAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            "token-id": tokenId.encodeToJSON(),
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<AccountLogin200Response>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: false)
    }

    /**

     - parameter refreshToken: (header)  
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func refreshReauth(refreshToken: String, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: AccountLogin200Response?, _ error: Error?) -> Void)) -> RequestTask {
        return refreshReauthWithRequestBuilder(refreshToken: refreshToken).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     - POST /integrations/watch-svc-go/refresh-reauth
     - parameter refreshToken: (header)  
     - returns: RequestBuilder<AccountLogin200Response> 
     */
    open class func refreshReauthWithRequestBuilder(refreshToken: String) -> RequestBuilder<AccountLogin200Response> {
        let localVariablePath = "/integrations/watch-svc-go/refresh-reauth"
        let localVariableURLString = OpenAPIClientAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            "refresh-token": refreshToken.encodeToJSON(),
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<AccountLogin200Response>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: false)
    }

    /**

     - parameter watchId: (query)  
     - parameter accessToken: (header)  
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func removeAccountWatch(watchId: String, accessToken: String, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: Void?, _ error: Error?) -> Void)) -> RequestTask {
        return removeAccountWatchWithRequestBuilder(watchId: watchId, accessToken: accessToken).execute(apiResponseQueue) { result in
            switch result {
            case .success:
                completion((), nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     - DELETE /integrations/watch-svc-go/account-watches/
     - parameter watchId: (query)  
     - parameter accessToken: (header)  
     - returns: RequestBuilder<Void> 
     */
    open class func removeAccountWatchWithRequestBuilder(watchId: String, accessToken: String) -> RequestBuilder<Void> {
        let localVariablePath = "/integrations/watch-svc-go/account-watches/"
        let localVariableURLString = OpenAPIClientAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "watch-id": (wrappedValue: watchId.encodeToJSON(), isExplode: true),
        ])

        let localVariableNillableHeaders: [String: Any?] = [
            "access-token": accessToken.encodeToJSON(),
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<Void>.Type = OpenAPIClientAPI.requestBuilderFactory.getNonDecodableBuilder()

        return localVariableRequestBuilder.init(method: "DELETE", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: false)
    }

    /**

     - parameter accessToken: (header)  
     - parameter search: (query)  
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func searchAccounts(accessToken: String, search: String, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: SearchAccounts200Response?, _ error: Error?) -> Void)) -> RequestTask {
        return searchAccountsWithRequestBuilder(accessToken: accessToken, search: search).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     - GET /integrations/watch-svc-go/account/search
     - search accounts
     - parameter accessToken: (header)  
     - parameter search: (query)  
     - returns: RequestBuilder<SearchAccounts200Response> 
     */
    open class func searchAccountsWithRequestBuilder(accessToken: String, search: String) -> RequestBuilder<SearchAccounts200Response> {
        let localVariablePath = "/integrations/watch-svc-go/account/search"
        let localVariableURLString = OpenAPIClientAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "search": (wrappedValue: search.encodeToJSON(), isExplode: true),
        ])

        let localVariableNillableHeaders: [String: Any?] = [
            "access-token": accessToken.encodeToJSON(),
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<SearchAccounts200Response>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: false)
    }

    /**

     - parameter search: (query)  
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func searchBrands(search: String, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: SearchBrands200Response?, _ error: Error?) -> Void)) -> RequestTask {
        return searchBrandsWithRequestBuilder(search: search).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     - GET /integrations/watch-svc-go/brand/search
     - searcch brands
     - parameter search: (query)  
     - returns: RequestBuilder<SearchBrands200Response> 
     */
    open class func searchBrandsWithRequestBuilder(search: String) -> RequestBuilder<SearchBrands200Response> {
        let localVariablePath = "/integrations/watch-svc-go/brand/search"
        let localVariableURLString = OpenAPIClientAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "search": (wrappedValue: search.encodeToJSON(), isExplode: true),
        ])

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<SearchBrands200Response>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: false)
    }

    /**

     - parameter accessToken: (header)  
     - parameter search: (query)  
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func searchWatches(accessToken: String, search: String, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: GetAccountWatches200Response?, _ error: Error?) -> Void)) -> RequestTask {
        return searchWatchesWithRequestBuilder(accessToken: accessToken, search: search).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     - GET /integrations/watch-svc-go/watches
     - returns searched watches with account
     - parameter accessToken: (header)  
     - parameter search: (query)  
     - returns: RequestBuilder<GetAccountWatches200Response> 
     */
    open class func searchWatchesWithRequestBuilder(accessToken: String, search: String) -> RequestBuilder<GetAccountWatches200Response> {
        let localVariablePath = "/integrations/watch-svc-go/watches"
        let localVariableURLString = OpenAPIClientAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "search": (wrappedValue: search.encodeToJSON(), isExplode: true),
        ])

        let localVariableNillableHeaders: [String: Any?] = [
            "access-token": accessToken.encodeToJSON(),
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<GetAccountWatches200Response>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: false)
    }

    /**

     - parameter accessToken: (header)  
     - parameter offerId: (query)  (optional)
     - parameter status: (query)  (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func setSwapOfferStatus(accessToken: String, offerId: String? = nil, status: String? = nil, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: SetSwapOfferStatus200Response?, _ error: Error?) -> Void)) -> RequestTask {
        return setSwapOfferStatusWithRequestBuilder(accessToken: accessToken, offerId: offerId, status: status).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     - PUT /integrations/watch-svc-go/swap-offer
     - update swap offer
     - parameter accessToken: (header)  
     - parameter offerId: (query)  (optional)
     - parameter status: (query)  (optional)
     - returns: RequestBuilder<SetSwapOfferStatus200Response> 
     */
    open class func setSwapOfferStatusWithRequestBuilder(accessToken: String, offerId: String? = nil, status: String? = nil) -> RequestBuilder<SetSwapOfferStatus200Response> {
        let localVariablePath = "/integrations/watch-svc-go/swap-offer"
        let localVariableURLString = OpenAPIClientAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "offer-id": (wrappedValue: offerId?.encodeToJSON(), isExplode: true),
            "status": (wrappedValue: status?.encodeToJSON(), isExplode: true),
        ])

        let localVariableNillableHeaders: [String: Any?] = [
            "access-token": accessToken.encodeToJSON(),
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<SetSwapOfferStatus200Response>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "PUT", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: false)
    }

    /**

     - parameter accessToken: (header)  
     - parameter syncAccountWatchesRequest: (body)  
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func syncAccountWatches(accessToken: String, syncAccountWatchesRequest: SyncAccountWatchesRequest, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: SyncAccountWatches200Response?, _ error: Error?) -> Void)) -> RequestTask {
        return syncAccountWatchesWithRequestBuilder(accessToken: accessToken, syncAccountWatchesRequest: syncAccountWatchesRequest).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     - POST /integrations/watch-svc-go/account-watches/sync
     - parameter accessToken: (header)  
     - parameter syncAccountWatchesRequest: (body)  
     - returns: RequestBuilder<SyncAccountWatches200Response> 
     */
    open class func syncAccountWatchesWithRequestBuilder(accessToken: String, syncAccountWatchesRequest: SyncAccountWatchesRequest) -> RequestBuilder<SyncAccountWatches200Response> {
        let localVariablePath = "/integrations/watch-svc-go/account-watches/sync"
        let localVariableURLString = OpenAPIClientAPI.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: syncAccountWatchesRequest)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            "Content-Type": "application/json",
            "access-token": accessToken.encodeToJSON(),
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<SyncAccountWatches200Response>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: false)
    }

    /**

     - parameter accessToken: (header)  
     - parameter watch: (body)  
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func updateAccountWatch(accessToken: String, watch: Watch, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: UpdateAccountWatch201Response?, _ error: Error?) -> Void)) -> RequestTask {
        return updateAccountWatchWithRequestBuilder(accessToken: accessToken, watch: watch).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     - PUT /integrations/watch-svc-go/account-watches/
     - parameter accessToken: (header)  
     - parameter watch: (body)  
     - returns: RequestBuilder<UpdateAccountWatch201Response> 
     */
    open class func updateAccountWatchWithRequestBuilder(accessToken: String, watch: Watch) -> RequestBuilder<UpdateAccountWatch201Response> {
        let localVariablePath = "/integrations/watch-svc-go/account-watches/"
        let localVariableURLString = OpenAPIClientAPI.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: watch)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            "Content-Type": "application/json",
            "access-token": accessToken.encodeToJSON(),
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<UpdateAccountWatch201Response>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "PUT", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: false)
    }
}
