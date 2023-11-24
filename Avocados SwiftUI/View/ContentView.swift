//
//  ContentView.swift
//  Avocados SwiftUI
//
//  Created by Jinu on 23/11/2023.
//

import SwiftUI

struct ContentView: View {
    // Mark:- PROPERTIES
    
    var headers : [Header] = headerData
    
    var facts: [Fact] = factData
    var recips: [Recipe] = recipeData
    
    var body: some View {
        ScrollView(.vertical,showsIndicators : false){
                VStack(alignment: .center,spacing: 20){
                    
                    // Mark:-  HEADER
                    ScrollView(.horizontal,showsIndicators: false){
                        HStack(alignment: .top,spacing: 0) {
                            ForEach(headers) { item in
                                HeaderView(header: item)
                            }
                            
                        }
                    }
                    // Mark:- DISHES
                    Text("Avocado Dishes")
                        .fontWeight(.bold)
                        .modifier(TitleModifier())
                    
                    DishesView()
                        .frame(maxWidth: 640)
                    // Mark:- AVOCADO FACTS
                    Text("Avocado Facts")
                        .fontWeight(.bold)
                        .modifier(TitleModifier())
                    
                    ScrollView(.horizontal,showsIndicators: false){
                        HStack(alignment: .top,spacing: 60){
                            ForEach(facts) { fact in
                                FactsView(fact: fact)
                            }
                        }
                        .padding(.vertical)
                        .padding(.leading,60)
                        .padding(.trailing,20)
                        
                        
                    }
                    // Mark:- RECIPE CARDS
                    Text("Avocado Recipes")
                        .fontWeight(.bold)
                        .modifier(TitleModifier())
                    VStack(alignment: .center, spacing: 20){
                        ForEach(recips) { recipe in
                            RecipeCardView(recipe: recipe)
                        }
                    }
                    .frame(maxWidth: 640)
                    .padding(.horizontal)
                    // Mark:- FOOTER
                    VStack(alignment: .center,spacing: 20) {
                        Text("All About avocados")
                            .fontWeight(.bold)
                            .modifier(TitleModifier())
                        Text("Everything you wanted to know about Avocados bt were to afraid to ask.")
                            .font(.system(.body,design:  .serif))
                            .multilineTextAlignment(.center)
                            .foregroundStyle(Color.gray)
                            .frame(minHeight: 60)
                    }
                    .frame(maxWidth: 640)
                    .padding()
                    .padding(.bottom,85)
                }
            }
        .edgesIgnoringSafeArea(.all)
        .padding(0)
        }
       
    }
struct TitleModifier: ViewModifier{
    
    func body(content : Content) -> some View{
        content
            .font(.system(.title, design: .serif))
            .foregroundStyle(Color("ColorGreenAdaptive"))
            .padding(8)
    }
}
#Preview {
    ContentView(headers: headerData , facts: factData,recips: recipeData)
}
