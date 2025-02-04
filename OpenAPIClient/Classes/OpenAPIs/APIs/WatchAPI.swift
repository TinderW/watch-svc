//
// WatchAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

open class WatchAPI {

    /**

     - parameter accessToken: (header)  
     - parameter addWatch: (body)  
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func addAccountWatch(accessToken: String, addWatch: AddWatch, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: UpdateAccountWatch200Response?, _ error: Error?) -> Void)) -> RequestTask {
        return addAccountWatchWithRequestBuilder(accessToken: accessToken, addWatch: addWatch).execute(apiResponseQueue) { result in
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
     - parameter addWatch: (body)  
     - returns: RequestBuilder<UpdateAccountWatch200Response> 
     */
    open class func addAccountWatchWithRequestBuilder(accessToken: String, addWatch: AddWatch) -> RequestBuilder<UpdateAccountWatch200Response> {
        let localVariablePath = "/integrations/watch-svc-go/account-watches/"
        let localVariableURLString = OpenAPIClientAPI.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: addWatch)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            "Content-Type": "application/json",
            "access-token": accessToken.encodeToJSON(),
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<UpdateAccountWatch200Response>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: false)
    }

    /**

     - parameter accessToken: (header)  
     - parameter accountId: (query)  (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func getAccountWatches(accessToken: String, accountId: String? = nil, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: GetAccountWatches200Response?, _ error: Error?) -> Void)) -> RequestTask {
        return getAccountWatchesWithRequestBuilder(accessToken: accessToken, accountId: accountId).execute(apiResponseQueue) { result in
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
     - parameter accountId: (query)  (optional)
     - returns: RequestBuilder<GetAccountWatches200Response> 
     */
    open class func getAccountWatchesWithRequestBuilder(accessToken: String, accountId: String? = nil) -> RequestBuilder<GetAccountWatches200Response> {
        let localVariablePath = "/integrations/watch-svc-go/account-watches/"
        let localVariableURLString = OpenAPIClientAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "account-id": (wrappedValue: accountId?.encodeToJSON(), isExplode: true),
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
     - parameter ids: (query)  
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func getWatchesById(accessToken: String, ids: String, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: GetAccountWatches200Response?, _ error: Error?) -> Void)) -> RequestTask {
        return getWatchesByIdWithRequestBuilder(accessToken: accessToken, ids: ids).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     - GET /integrations/watch-svc-go/watches-by-id
     - returns searched watches with account
     - parameter accessToken: (header)  
     - parameter ids: (query)  
     - returns: RequestBuilder<GetAccountWatches200Response> 
     */
    open class func getWatchesByIdWithRequestBuilder(accessToken: String, ids: String) -> RequestBuilder<GetAccountWatches200Response> {
        let localVariablePath = "/integrations/watch-svc-go/watches-by-id"
        let localVariableURLString = OpenAPIClientAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "ids": (wrappedValue: ids.encodeToJSON(), isExplode: true),
        ])

        let localVariableNillableHeaders: [String: Any?] = [
            "access-token": accessToken.encodeToJSON(),
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<GetAccountWatches200Response>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: false)
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
    open class func searchWatches(accessToken: String, search: String, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: SearchWatches200Response?, _ error: Error?) -> Void)) -> RequestTask {
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
     - returns: RequestBuilder<SearchWatches200Response> 
     */
    open class func searchWatchesWithRequestBuilder(accessToken: String, search: String) -> RequestBuilder<SearchWatches200Response> {
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

        let localVariableRequestBuilder: RequestBuilder<SearchWatches200Response>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: false)
    }

    /**

     - parameter accessToken: (header)  
     - parameter watchId: (query)  
     - parameter status: (query)  (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func setWatchSwapStatus(accessToken: String, watchId: String, status: String? = nil, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: SetWatchSwapStatus200Response?, _ error: Error?) -> Void)) -> RequestTask {
        return setWatchSwapStatusWithRequestBuilder(accessToken: accessToken, watchId: watchId, status: status).execute(apiResponseQueue) { result in
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
     - parameter accessToken: (header)  
     - parameter watchId: (query)  
     - parameter status: (query)  (optional)
     - returns: RequestBuilder<SetWatchSwapStatus200Response> 
     */
    open class func setWatchSwapStatusWithRequestBuilder(accessToken: String, watchId: String, status: String? = nil) -> RequestBuilder<SetWatchSwapStatus200Response> {
        let localVariablePath = "/integrations/watch-svc-go/watches/swap"
        let localVariableURLString = OpenAPIClientAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "status": (wrappedValue: status?.encodeToJSON(), isExplode: true),
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
     - parameter updateWatch: (body)  
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func updateAccountWatch(accessToken: String, updateWatch: UpdateWatch, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: UpdateAccountWatch200Response?, _ error: Error?) -> Void)) -> RequestTask {
        return updateAccountWatchWithRequestBuilder(accessToken: accessToken, updateWatch: updateWatch).execute(apiResponseQueue) { result in
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
     - parameter updateWatch: (body)  
     - returns: RequestBuilder<UpdateAccountWatch200Response> 
     */
    open class func updateAccountWatchWithRequestBuilder(accessToken: String, updateWatch: UpdateWatch) -> RequestBuilder<UpdateAccountWatch200Response> {
        let localVariablePath = "/integrations/watch-svc-go/account-watches/"
        let localVariableURLString = OpenAPIClientAPI.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: updateWatch)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            "Content-Type": "application/json",
            "access-token": accessToken.encodeToJSON(),
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<UpdateAccountWatch200Response>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "PUT", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: false)
    }
}
