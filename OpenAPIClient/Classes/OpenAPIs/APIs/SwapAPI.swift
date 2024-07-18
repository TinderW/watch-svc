//
// SwapAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

open class SwapAPI {

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

     - parameter swapStatus: (query)  
     - parameter accessToken: (header)  
     - parameter watchId: (query)  
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func setWatchSwapStatus(swapStatus: Bool, accessToken: String, watchId: String, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: SetWatchSwapStatus200Response?, _ error: Error?) -> Void)) -> RequestTask {
        return setWatchSwapStatusWithRequestBuilder(swapStatus: swapStatus, accessToken: accessToken, watchId: watchId).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     - POST /integrations/watch-svc-go/watches/swap
     - setSwapstatus
     - parameter swapStatus: (query)  
     - parameter accessToken: (header)  
     - parameter watchId: (query)  
     - returns: RequestBuilder<SetWatchSwapStatus200Response> 
     */
    open class func setWatchSwapStatusWithRequestBuilder(swapStatus: Bool, accessToken: String, watchId: String) -> RequestBuilder<SetWatchSwapStatus200Response> {
        let localVariablePath = "/integrations/watch-svc-go/watches/swap"
        let localVariableURLString = OpenAPIClientAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "swap-status": (wrappedValue: swapStatus.encodeToJSON(), isExplode: true),
            "watch-id": (wrappedValue: watchId.encodeToJSON(), isExplode: true),
        ])

        let localVariableNillableHeaders: [String: Any?] = [
            "access-token": accessToken.encodeToJSON(),
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<SetWatchSwapStatus200Response>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: false)
    }

    /**

     - parameter accessToken: (header)  
     - parameter swapStatus: (body)  
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func syncSwapOffers(accessToken: String, swapStatus: [SwapStatus], apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: SyncSwapOffers200Response?, _ error: Error?) -> Void)) -> RequestTask {
        return syncSwapOffersWithRequestBuilder(accessToken: accessToken, swapStatus: swapStatus).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     - POST /integrations/watch-svc-go/swap-offer/sync
     - sync swapOffers
     - parameter accessToken: (header)  
     - parameter swapStatus: (body)  
     - returns: RequestBuilder<SyncSwapOffers200Response> 
     */
    open class func syncSwapOffersWithRequestBuilder(accessToken: String, swapStatus: [SwapStatus]) -> RequestBuilder<SyncSwapOffers200Response> {
        let localVariablePath = "/integrations/watch-svc-go/swap-offer/sync"
        let localVariableURLString = OpenAPIClientAPI.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: swapStatus)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            "Content-Type": "application/json",
            "access-token": accessToken.encodeToJSON(),
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<SyncSwapOffers200Response>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: false)
    }
}
