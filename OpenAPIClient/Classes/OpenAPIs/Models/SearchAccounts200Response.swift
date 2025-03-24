//
// SearchAccounts200Response.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct SearchAccounts200Response: Codable, JSONEncodable, Hashable {

    public var data: [Account]
    public var included: [SearchAccounts200ResponseIncludedInner]

    public init(data: [Account], included: [SearchAccounts200ResponseIncludedInner]) {
        self.data = data
        self.included = included
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case data
        case included
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(data, forKey: .data)
        try container.encode(included, forKey: .included)
    }
}

