//
//  DishesView.swift
//  Avocados SwiftUI
//
//  Created by Jinu on 23/11/2023.
//

import SwiftUI

struct DishesView: View {
    var body: some View {
        HStack(alignment: .center,spacing: 4){
            VStack(alignment: .leading,spacing: 4  ) {
                // first Column
                HStack(){
                    Image("icon-toasts")
                        .resizable()
                        .modifier(IconModifier())
                    Spacer()
                    Text("Toests")
                }
                Divider()
                HStack(){
                    Image("icon-tacos")
                        .resizable()
                        .modifier(IconModifier())
                    Spacer()
                    Text("Tacos")
                }
                Divider()
                HStack(){
                    Image("icon-salads")
                        .resizable()
                        .modifier(IconModifier())
                    Spacer()
                    Text("Salads")
                }
                Divider()
                HStack(){
                    Image("icon-halfavo")
                        .resizable()
                        .modifier(IconModifier())
                    Spacer()
                    Text("Spreads")
                }
            }
            
            VStack(alignment: .center, spacing: 16){
                //Second Column

                HStack {
                    Divider()
                }
                Image(systemName: "heart.circle")
                    .font(Font.title.weight(.ultraLight))
                    .imageScale(.large)
                HStack {
                    Divider()
                }
            }
            VStack(alignment: .trailing,spacing: 4) {
                // Third Column
                HStack(){
                    Text("Guacamole")
                    Spacer()
                    Image("icon-guacamole")
                        .resizable()
                        .modifier(IconModifier()).frame(width: 42,height: 42,alignment: .center)
                }
                Divider()
                HStack(){
                    Text("Sandwich")
                    Spacer()
                    Image("icon-sandwiches")
                        .resizable()
                        .modifier(IconModifier()).frame(width: 42,height: 42,alignment: .center)
                }
                Divider()
                HStack(){
                    Text("Soup")
                    Spacer()
                    Image("icon-soup")
                        .resizable()
                        .modifier(IconModifier()).frame(width: 42,height: 42,alignment: .center)
                }
                Divider()
                HStack(){
                    Text("Smoothie")
                    Spacer()
                    Image("icon-smoothies")
                        .resizable()
                        .modifier(IconModifier()).frame(width: 42,height: 42,alignment: .center)
                }
            }
        }
        .font(.system(.callout, design: .serif))
        .foregroundStyle(.gray)
        .padding(.horizontal)
        .frame(maxHeight: 220)
        
    }
}
struct IconModifier: ViewModifier{
    
    func body(content: Content) -> some View {
        content
            .frame(width: 42,height: 42,alignment: .center)
    }
}


#Preview(traits: .fixedLayout(width: 414, height: 280)) {
    DishesView()
    
}
