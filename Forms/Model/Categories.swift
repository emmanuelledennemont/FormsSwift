//
//  CategoriesView.swift
//  Categories
//
//  Created by Emmanuelle  Dennemont on 24/06/2024.
//
// CategoryType.swift
import SwiftUI

enum CategoryType: String, CaseIterable, Identifiable {
    case gros = "Gros"
    case petit = "Petit"
    case devices = "Devices"
    case mobilite = "Mobilité"

    var id: UUID {
        return UUID()
    }

    var imageName: String {
        switch self {
        case .gros:
            return "refrigerator"
        case .petit:
            return "microwave"
        case .devices:
            return "iphone"
        case .mobilite:
            return "bicycle"
        }
    }

    var title: String {
        return self.rawValue
    }
}
