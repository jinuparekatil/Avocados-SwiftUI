//
//  RipeningView.swift
//  Avocados SwiftUI
//
//  Created by Jinu on 24/11/2023.
//

import SwiftUI

struct RipeningView: View {
    // Mark:- PROPERTIES
    var ripening: Ripening
    @State private var slideAnimation: Bool = false
    
    var body: some View {
        VStack {
            Image(ripening.image)
                .resizable()
                .frame(width: 100,height: 100,alignment: .center)
                .clipShape(Circle())
                .background(
                Circle()
                    .fill(Color("ColorGreenLight"))
                    .frame(width: 110,height: 110,alignment: .center)
                )
                .background(
                Circle()
                    .fill(Color("ColorAppearanceAdaptive"))
                    .frame(width: 120,height: 120,alignment: .center)
                )
            .zIndex(1.0)
            .offset( y: self.slideAnimation ? 55 : -55 )
            .animation(.easeInOut(duration: 1), value: self.slideAnimation ? 1 : 0)
            
            VStack(alignment: .center,spacing: 10){
//                STAGE
                VStack(alignment:.center,spacing: 0){
                    Text(ripening.stage)
                        .font(.system(.largeTitle,design: .serif))
                        .fontWeight(.bold)
                    Text("STAGE")
                        .font(.system(.body,design: .serif))
                        .fontWeight(.heavy)

                }
                .foregroundStyle(Color("ColorGreenMedium"))
                .padding(.top, 65)
                .frame(width: 180)
                    
                
//                TITLE
                Text(ripening.title)
                    .font(.system(.title,design: .serif))
                    .fontWeight(.bold)
                    .foregroundStyle(Color("ColorGreenMedium"))
                    .padding(.vertical,12)
                    .padding(.horizontal,0)
                    .frame(width: 220)
                    .background(
                        RoundedRectangle(cornerRadius: 12)
                            .fill(LinearGradient(gradient: Gradient(colors:[Color.white,Color("ColorGreenLight")]), startPoint: .top, endPoint: .bottom))
                            
                            .shadow(color: Color("ColorBlackTransparantLight"), radius: 6,x: 0,y:6)
                    )
                Spacer()
//                DESCRIPTION
                Text(ripening.description)
                    .foregroundStyle(Color("ColorGreenDark"))
                    .fontWeight(.bold)
                    .lineLimit(nil)
                Spacer()
//                RIPENESS
                
                Text(ripening.ripeness.uppercased())
                    .foregroundStyle(.white)
                    .font(.system(.callout,design: .serif))
                    .fontWeight(.bold)
                    .shadow(radius: 3)
                    .padding(.vertical)
                    .padding(.horizontal,0)
                    .frame(width: 185)
                    .background(
                        RoundedRectangle(cornerRadius: 12)
                        .fill(LinearGradient(gradient: Gradient(colors: [Color("ColorGreenMedium"),Color("ColorGreenDark")]), startPoint: .top, endPoint: .bottom))
                        .shadow(color: Color("ColorBlackTransparantLight"), radius: 6, x: 0, y: 6)
                        
                    )
//                INNSTRUCTION
                Text(ripening.instruction)
                    .font(.footnote)
                    .foregroundStyle(Color("ColorGreenLight"))
                    .fontWeight(.bold)
                    .lineLimit(3)
                    .frame(width: 160)
                Spacer()
            }
            .zIndex(0)
            .multilineTextAlignment(.center)
            .padding(.horizontal)
            .frame(width: 260,height: 485,alignment: .center)
            .background(.linearGradient(Gradient(colors: [Color("ColorGreenLight"),Color("ColorGreenMedium")]), startPoint: .top, endPoint: .bottom))
            .cornerRadius(20)
        }
        .ignoresSafeArea(edges: .all)
        .onAppear {
            self.slideAnimation.toggle()
        }
    }
}

#Preview {
    RipeningView(ripening: ripeningData[1])
}
