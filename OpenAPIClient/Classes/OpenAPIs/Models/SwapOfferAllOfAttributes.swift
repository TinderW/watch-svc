//
// SwapOfferAllOfAttributes.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct SwapOfferAllOfAttributes: Codable, JSONEncodable, Hashable {

    public enum Kind: String, Codable, CaseIterable {
        case offer = "swap-offer"
        case offerInitiatorPay = "swap-offer-initiator-pay"
        case offerSellerPay = "swap-offer-seller-pay"
    }
    public enum Status: String, Codable, CaseIterable {
        case cancelled = "cancelled"
        case active = "active"
        case accepted = "accepted"
        case denied = "denied"
        case processing = "processing"
        case rejected = "rejected"
        case completed = "completed"
    }
    public var swapWatchesId: [String]
    public var offeredWatchesId: [String]
    public var kind: Kind
    public var status: Status
    public var timestamp: Int64?
    public var currency: String?
    public var surchargeValue: Double?

    public init(swapWatchesId: [String], offeredWatchesId: [String], kind: Kind, status: Status, timestamp: Int64? = nil, currency: String? = nil, surchargeValue: Double? = nil) {
        self.swapWatchesId = swapWatchesId
        self.offeredWatchesId = offeredWatchesId
        self.kind = kind
        self.status = status
        self.timestamp = timestamp
        self.currency = currency
        self.surchargeValue = surchargeValue
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case swapWatchesId = "swap_watches_id"
        case offeredWatchesId = "offered_watches_id"
        case kind
        case status
        case timestamp
        case currency
        case surchargeValue = "surcharge_value"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(swapWatchesId, forKey: .swapWatchesId)
        try container.encode(offeredWatchesId, forKey: .offeredWatchesId)
        try container.encode(kind, forKey: .kind)
        try container.encode(status, forKey: .status)
        try container.encodeIfPresent(timestamp, forKey: .timestamp)
        try container.encodeIfPresent(currency, forKey: .currency)
        try container.encodeIfPresent(surchargeValue, forKey: .surchargeValue)
    }
}

