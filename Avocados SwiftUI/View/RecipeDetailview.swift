//
//  RecipeDetailview.swift
//  Avocados SwiftUI
//
//  Created by Jinu on 24/11/2023.
//

import SwiftUI

struct RecipeDetailview: View {
    
    // Mark:- PROPERTIES
    var recipe : Recipe
    @State private var pulsate: Bool = false
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        ScrollView(.vertical,showsIndicators: false) {
            VStack(alignment: .center,spacing: 0) {
                //Image
                Image(recipe.image)
                    .resizable()
                .scaledToFit()
                
                Group{
                    //                    Title
                    Text(recipe.title)
                        .font(.system(.largeTitle,design: .serif))
                        .fontWeight(.bold)
                        .multilineTextAlignment(.center)
                        .foregroundStyle(Color("ColorGreenAdaptive"))
                        .padding(.top,10)
                    //                    Ratings
                    RecipeRatingView(recipe: recipe)
                    //                    Cooking
                    RecipeCookingView(recipe: recipe)
                    //                    Ingredients
                    Text("Ingredients")
                        .fontWeight(.bold)
                        .modifier(TitleModifier())
                    VStack(alignment: .leading,spacing: 5){
                        ForEach(recipe.ingredients, id : \.self){ item in
                            VStack(alignment:.leading,spacing: 5){
                                Text(item)
                                    .font(.footnote)
                                    .multilineTextAlignment(.leading)
                                Divider()
                            }
                            
                        }
                    }
                        //                    Instructions
                        
                        Text("Instructions")
                            .fontWeight(.bold)
                            .modifier(TitleModifier())
                        
                        ForEach(recipe.instructions,id: \.self){ item in
                            VStack(alignment: .center ,spacing: 5){
                                Image(systemName: "chevron.down.circle")
                                    .resizable()
                                    .frame(width: 42,height: 42,alignment: .center)
                                    .imageScale(.large)
                                    .font(Font.title.weight(.ultraLight))
                                    .foregroundColor(Color("ColorGreenAdaptive"))
                                Text(item)
                                    .lineLimit(nil)
                                    .multilineTextAlignment(.center)
                                    .font(.system(.body,design: .serif))
                                    .frame(minHeight: 100)
                            }
                            
                        
                    }
                }
                .padding(.horizontal,24)
                .padding(.vertical,12)
            }
        }
        .ignoresSafeArea(edges: .top)
        .overlay(
            HStack {
                Spacer()
                VStack {
                    Button(action: {
                        //ACTION
                        
                        self.dismiss()
                    }, label: {
                        Image(systemName: "chevron.down.circle.fill")
                            .font(.title)
                            .foregroundStyle(Color.white)
                            .shadow(radius: 4)
                            .opacity(self.pulsate ? 1 : 0.6)
                            .scaleEffect(self.pulsate ? 1.2 : 0.8,anchor: .center)
                            .animation(.easeInOut(duration: 1.5).repeatForever(autoreverses: true), value: self.pulsate ? 1: 0)
                })
                    .padding(.trailing,20)
                    .padding(.top,24)
                    Spacer()
                }
            }
        )
        .onAppear(){
            self.pulsate.toggle()
        }
    }
}

#Preview {
    RecipeDetailview(recipe: recipeData[0])
}
