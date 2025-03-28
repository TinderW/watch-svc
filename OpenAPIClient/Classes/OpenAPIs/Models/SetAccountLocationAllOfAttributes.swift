//
// SetAccountLocationAllOfAttributes.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct SetAccountLocationAllOfAttributes: Codable, JSONEncodable, Hashable {

    public var city: String
    public var region: String
    public var country: String
    public var countryCode: String

    public init(city: String, region: String, country: String, countryCode: String) {
        self.city = city
        self.region = region
        self.country = country
        self.countryCode = countryCode
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case city
        case region
        case country
        case countryCode
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(city, forKey: .city)
        try container.encode(region, forKey: .region)
        try container.encode(country, forKey: .country)
        try container.encode(countryCode, forKey: .countryCode)
    }
}

