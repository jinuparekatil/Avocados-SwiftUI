//
//  RecipeCardView.swift
//  Avocados SwiftUI
//
//  Created by Jinu on 23/11/2023.
//

import SwiftUI

struct RecipeCardView: View {
    // Mark:- PROPERTIES
    
    var recipe: Recipe
    var hapticImpact = UIImpactFeedbackGenerator(style: .heavy)
    @State private var showModel: Bool = false
    
    var body: some View {
        VStack(alignment: .leading,spacing: 0) {
            Image(recipe.image)
                .resizable()
                .scaledToFit()
                .overlay(
                    HStack {
                        Spacer()
                        VStack {
                            Image(systemName: "bookmark")
                                .font(Font.title.weight(.light))
                                .foregroundStyle(.white)
                                .imageScale(.small)
                            .shadow(color: Color("BlackTransparentLight"),radius: 2,x: 0,y: 0)
                            .padding(.trailing , 20)
                            .padding(.top,22)
                            Spacer()
                        }
                    }
                )
            VStack(alignment: .leading,spacing: 12){
                //TITLE
                Text(recipe.title)
                    .font(.system(.title, design: .serif))
                    .fontWeight(.bold)
                    .foregroundStyle(Color("ColorGreenMedium"))
                    .lineLimit(1)
                //HEADLINE
                Text(recipe.headline)
                    .font(.system(.title,design: .serif))
                    .foregroundStyle(Color.gray)
                    .italic()
                //RATES
                RecipeRatingView(recipe: recipe)
                //CCOKING
                RecipeCookingView(recipe: recipe)
                .font(.footnote)
                .foregroundStyle(.gray)
            }
            .padding()
            .padding(.bottom,12)
        }
        .background(.white)
        .clipShape(.rect(cornerRadius: 12))
        .shadow(color: Color("ColorBlackTransparentLight") ,radius: 8,x:0 , y: 0)
        .onTapGesture {
            self.hapticImpact.impactOccurred()
            self.showModel = true
        }
        .sheet(isPresented: self.$showModel, content: {
            RecipeDetailview(recipe: self.recipe)
        })
    }
}

#Preview(traits: .sizeThatFitsLayout) {
    RecipeCardView(recipe: recipeData[0])
}
