//
//  ContentView.swift
//  Categories
//
//  Created by Emmanuelle  Dennemont on 21/06/2024.
//

import SwiftUI

struct CategoriesView: View {
    @State private var selectedCategory: CategoryType?

    let categories = CategoryType.allCases

    var body: some View {
        VStack(alignment: .leading, spacing: 0) { // Aligner tout le contenu à gauche avec moins d'espacement
            Text("Catégories")
                .font(.headline)
                .fontWeight(.bold)
                .padding(.horizontal) // Ajouter du padding horizontal seulement
                .padding(.top) // Ajouter du padding seulement en haut

            HStack(spacing: 20) {
                ForEach(categories) { category in
                    CategoryButton(category: category, selectedCategory: $selectedCategory)
                }
            }
            .padding(.horizontal) // Ajouter du padding horizontal aux boutons de catégorie
            .background(
                GeometryReader { geometry in
                    RoundedRectangle(cornerRadius: 10)
                        .fill(Color.white)
                        .shadow(color: Color.black.opacity(0.1), radius: 2, x: 0, y: 2)
                        .frame(width: geometry.size.width, height: geometry.size.height)
                }
            )
            .padding() // Ajouter du padding autour de la carte
            .frame(maxWidth: .infinity, alignment: .leading) // Aligner la carte à gauche
        }
        .padding() // Padding global pour la VStack principale
    }
}

struct CategoryButton: View {
    var category: CategoryType
    @Binding var selectedCategory: CategoryType?

    var body: some View {
        Button(action: {
            selectedCategory = category
        }) {
            VStack {
                Image(systemName: category.imageName)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 40, height: 40)
                    .padding(10)
                    .background(Circle()
                        .fill(selectedCategory == category ? Color.orange : Color(UIColor.systemGray6)))
                        .foregroundColor(selectedCategory == category ? .white : .gray)
                
                Text(category.title)
                    .font(.caption)
                    .foregroundColor(selectedCategory == category ? .orange : .black)
                    .padding(.top, 5)
            }
        }
        .buttonStyle(PlainButtonStyle())
        .padding(5)
    }
}
#Preview {
    CategoriesView()
}
