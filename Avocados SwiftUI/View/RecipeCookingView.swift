//
//  RecipeCookingView.swift
//  Avocados SwiftUI
//
//  Created by Jinu on 24/11/2023.
//

import SwiftUI

struct RecipeCookingView: View {
    
    // Mark:- PROPERTIES
    
    var recipe : Recipe
    var body: some View {
        HStack(alignment: .center,spacing: 12){
            HStack(alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/,spacing: 2){
                Image(systemName: "person.2")
                Text("Serves: \(recipe.serves)")
            }
            HStack(alignment: .center,spacing: 2){
                Image(systemName: "clock")
                Text("Prep: \(recipe.preparation)")
            }
            HStack(alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/,spacing: 2){
                Image(systemName: "flame")
                Text("Cooking: \(recipe.cooking)")
            }
        }
    }
}

#Preview(traits : .sizeThatFitsLayout) {
    RecipeCookingView(recipe: recipeData[0])
}
