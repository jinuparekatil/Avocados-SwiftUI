//
//  RecipeRatingView.swift
//  Avocados SwiftUI
//
//  Created by Jinu on 24/11/2023.
//

import SwiftUI

struct RecipeRatingView: View {
    // Mark:-  PROPERTIES
    var recipe : Recipe
    
    var body: some View {
        HStack(alignment: .center,spacing: 5) {
            ForEach(1 ..< (recipe.rating),id: \.self) { _ in
                Image(systemName: "star.fill")
                    .font(.body)
                .foregroundStyle(.yellow)
            }
        }
    }
}

#Preview(traits : .sizeThatFitsLayout) {
    RecipeRatingView(recipe: recipeData[0])
}
