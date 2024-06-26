//
// SwapStatusAllOfAttributes.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct SwapStatusAllOfAttributes: Codable, JSONEncodable, Hashable {

    public var swapStatus: Bool
    public var timestamp: Int64

    public init(swapStatus: Bool, timestamp: Int64) {
        self.swapStatus = swapStatus
        self.timestamp = timestamp
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case swapStatus
        case timestamp
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(swapStatus, forKey: .swapStatus)
        try container.encode(timestamp, forKey: .timestamp)
    }
}

