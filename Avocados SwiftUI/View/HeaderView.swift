//
//  HeaderView.swift
//  Avocados SwiftUI
//
//  Created by Jinu on 23/11/2023.
//

import SwiftUI

struct HeaderView: View {
    // Mark:-  PROPERTIES
    @State private var showHeadline : Bool = false
    var slideInAnimation: Animation {
        Animation.spring(response: 1.5,dampingFraction: 0.5,blendDuration: 0.5)
            .speed(1)
            .delay(0.25)
    }
    var header : Header
    var body: some View {
        ZStack {
            Image(header.image)
                .resizable()
                .aspectRatio(contentMode: .fill)
            HStack(alignment: .top , spacing: 0) {
                Rectangle()
                    .fill(Color("ColorGreenLight"))
                    .frame(width: 4)
                VStack(alignment: .leading,spacing: 6){
                    Text(header.headline)
                        .font(.system(.title,design: .serif))
                        .fontWeight(.bold)
                        .foregroundStyle(.white)
                        .shadow(radius: 3)
                    Text(header.subheadline)
                        .lineLimit(2)
                        .multilineTextAlignment(.leading)
                        .foregroundStyle(.white)
                        .shadow(radius: 3)
                }
                .padding(.vertical,0)
                .padding(.horizontal,20)
                .frame(width: 281,height: 105)
                .background(Color("ColorBlackTransparantLight"))
            }
            .frame(width: 285,height: 105,alignment: .center)
            .offset(x: -66,y:showHeadline ? 75 :220)
            .animation(slideInAnimation, value: showHeadline ? 1 : 0)
            .onAppear(perform: {
                self.showHeadline.toggle()
            })
        }
        .frame(width: 480,height: 320,alignment: .center)
    }
}

#Preview {
    HeaderView(header: headerData[1])
}
