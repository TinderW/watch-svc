//
// AddAccountWatch201Response.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct AddAccountWatch201Response: Codable, JSONEncodable, Hashable {

    public var data: Watch?
    public var included: [Brand]?

    public init(data: Watch? = nil, included: [Brand]? = nil) {
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
        try container.encodeIfPresent(data, forKey: .data)
        try container.encodeIfPresent(included, forKey: .included)
    }
}
