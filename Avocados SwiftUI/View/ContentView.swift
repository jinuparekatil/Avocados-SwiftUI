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
                    // Mark:- FOOTER
                    VStack(alignment: .center,spacing: 20) {
                        Text("All About avocados")
                            .font(.system(.title, design: .serif))
                            .fontWeight(.bold)
                            .foregroundStyle(Color("ColorGreenAdaptive"))
                            .padding(8)
                        Text("Everything you wanted to know about Avocados bt were to afraid to ask.")
                            .font(.system(.body,design:  .serif))
                            .multilineTextAlignment(.center)
                            .foregroundStyle(Color.gray)
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

#Preview {
    ContentView(headers: headerData)
}
