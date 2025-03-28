//
// AccountLocation.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct AccountLocation: Codable, JSONEncodable, Hashable {

    public enum ModelType: String, Codable, CaseIterable {
        case location = "location"
    }
    public var id: String
    public var type: ModelType
    public var attributes: AccountLocationAllOfAttributes
    public var relationships: AccountLocationAllOfRelationships

    public init(id: String, type: ModelType, attributes: AccountLocationAllOfAttributes, relationships: AccountLocationAllOfRelationships) {
        self.id = id
        self.type = type
        self.attributes = attributes
        self.relationships = relationships
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case id
        case type
        case attributes
        case relationships
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(id, forKey: .id)
        try container.encode(type, forKey: .type)
        try container.encode(attributes, forKey: .attributes)
        try container.encode(relationships, forKey: .relationships)
    }
}

