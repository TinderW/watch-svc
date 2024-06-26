//
// Errors.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** Standard JSON:API error */
public struct Errors: Codable, JSONEncodable, Hashable {

    /** Non-empty array of errors occurred during the request processing */
    public var errors: [ErrorsErrorsInner]

    public init(errors: [ErrorsErrorsInner]) {
        self.errors = errors
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case errors
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(errors, forKey: .errors)
    }
}

