//
//  AvocadosView.swift
//  Avocados SwiftUI
//
//  Created by Jinu on 23/11/2023.
//

import SwiftUI

struct AvocadosView: View {
    
    // Mark:- PROPERTIES
    
    @State private var pulsateAnimation : Bool = false
    @State private var scale: CGFloat = 1.0

    var body: some View {
        VStack {
            Spacer()
            Image("avocado")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 240,height: 240,alignment: .center)
                .shadow(color: Color("ColorBlackTransparentDark"), radius:12, x: 0,y: 8)
                .scaleEffect(self.pulsateAnimation ? 1 : 0.9)
                .opacity(self.pulsateAnimation ? 1 : 0.9)
                .animation(.easeInOut(duration: 3).repeatForever(autoreverses: true),value: self.pulsateAnimation ? 1 : 0)
            VStack {
                Text("Avocados")
                    .font(.system(size: 42,weight: .bold,design: .serif
                                 ))
                    .foregroundStyle(Color(.white))
                    .padding()
                    .shadow(color: Color("ColorBlackTransparentDark"), radius: 4,x: 0 , y: 4)
                Text("Creamy, green, and full of nutrients! Avocado is a powerhouse ingredient at any meal. Enjoy these handpicked avocado recipes for breakfast, lunch, dinner & more!")
                    .lineLimit(nil)
                    .font(.system(.headline, design: .serif))
                    .foregroundStyle(Color("ColorGreenLight"))
                    .multilineTextAlignment(.center)
                    .lineSpacing(8)
                    .frame(maxWidth: 640,minHeight: 120)
            }
            Spacer()
        }
        .background(
        Image("background")
            .resizable()
            .aspectRatio(contentMode: .fill)
            .scaleEffect(self.pulsateAnimation ? 1 : 1.10)

            .animation(.easeInOut(duration: 17).repeatForever(autoreverses: true),value: self.pulsateAnimation ? 0 : 1)
        )
        .edgesIgnoringSafeArea(.all)
        .onAppear(perform: {
            self.pulsateAnimation.toggle()
        })
    }
}

#Preview {
    AvocadosView()
        .environment(\.colorScheme, .dark)
}
