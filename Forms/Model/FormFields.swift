//
//  FormField.swift
//  Formulaire2
//
//  Created by Emmanuelle  Dennemont on 25/06/2024.
//

// FormSection.swift
import Foundation

enum FormSection {
    case appareil
    case informationsPersonnelles

    var headerText: String {
        switch self {
        case .appareil:
            return "Votre appareil:"
        case .informationsPersonnelles:
            return "Vos Informations:"
        }
    }
}

enum FormField: String, CaseIterable, Identifiable {
    case nom = "Nom:"
    case email = "Email:"
    case phoneNumber = "Numéro de téléphone:"
    case appareil = "Appareil:"
    case description = "Description:"

    var id: UUID {
        return UUID()
    }

    var placeholder: String {
        switch self {
        case .nom:
            return "Entrez votre nom"
        case .email:
            return "Entrez votre email"
        case .phoneNumber:
            return "Entrez votre numéro de téléphone"
        case .appareil:
            return "Entrez le type d'appareil"
        case .description:
            return "Décrivez le problème"
        }
    }

    var label: String {
        self.rawValue
    }
}
