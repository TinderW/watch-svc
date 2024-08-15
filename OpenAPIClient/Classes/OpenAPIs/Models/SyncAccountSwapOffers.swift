//
// SyncAccountSwapOffers.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct SyncAccountSwapOffers: Codable, JSONEncodable, Hashable {

    public enum ModelType: String, Codable, CaseIterable {
        case swapOfferSync = "swap-offer-sync"
    }
    public var type: ModelType
    public var id: String
    public var attributes: SyncAccountSwapOffersAllOfAttributes

    public init(type: ModelType, id: String, attributes: SyncAccountSwapOffersAllOfAttributes) {
        self.type = type
        self.id = id
        self.attributes = attributes
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case type
        case id
        case attributes
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(type, forKey: .type)
        try container.encode(id, forKey: .id)
        try container.encode(attributes, forKey: .attributes)
    }
}

