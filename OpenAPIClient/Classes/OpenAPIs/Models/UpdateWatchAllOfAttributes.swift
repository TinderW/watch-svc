//
// UpdateWatchAllOfAttributes.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct UpdateWatchAllOfAttributes: Codable, JSONEncodable, Hashable {

    public var photos: [String]
    public var reference: String?
    public var model: String
    public var caseMaterial: String?
    public var dialColor: String?
    public var isWorn: Bool
    public var price: Double
    public var currency: String
    public var equipment: String?
    public var notes: String?
    public var brand: String

    public init(photos: [String], reference: String? = nil, model: String, caseMaterial: String? = nil, dialColor: String? = nil, isWorn: Bool, price: Double, currency: String, equipment: String? = nil, notes: String? = nil, brand: String) {
        self.photos = photos
        self.reference = reference
        self.model = model
        self.caseMaterial = caseMaterial
        self.dialColor = dialColor
        self.isWorn = isWorn
        self.price = price
        self.currency = currency
        self.equipment = equipment
        self.notes = notes
        self.brand = brand
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case photos
        case reference
        case model
        case caseMaterial = "case_material"
        case dialColor = "dial_color"
        case isWorn = "is_worn"
        case price
        case currency
        case equipment
        case notes
        case brand
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(photos, forKey: .photos)
        try container.encodeIfPresent(reference, forKey: .reference)
        try container.encode(model, forKey: .model)
        try container.encodeIfPresent(caseMaterial, forKey: .caseMaterial)
        try container.encodeIfPresent(dialColor, forKey: .dialColor)
        try container.encode(isWorn, forKey: .isWorn)
        try container.encode(price, forKey: .price)
        try container.encode(currency, forKey: .currency)
        try container.encodeIfPresent(equipment, forKey: .equipment)
        try container.encodeIfPresent(notes, forKey: .notes)
        try container.encode(brand, forKey: .brand)
    }
}

