//
// SetOfferProposalStatusAllOfRelationships.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct SetOfferProposalStatusAllOfRelationships: Codable, JSONEncodable, Hashable {

    public var swapProposalId: String

    public init(swapProposalId: String) {
        self.swapProposalId = swapProposalId
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case swapProposalId = "swap-proposal-id"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(swapProposalId, forKey: .swapProposalId)
    }
}

