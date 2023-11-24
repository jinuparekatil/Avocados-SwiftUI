//
//  SettingsView.swift
//  Avocados SwiftUI
//
//  Created by Jinu on 23/11/2023.
//

import SwiftUI

struct SettingsView: View {
    // Mark:- PROPERTIES
    @State private var enableNotification : Bool = true
    @State private var backgrounRefresh : Bool = false
    var body: some View {
        VStack(alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/,spacing: 0, content: {

            VStack(alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/,spacing: 5, content: {
                Image("avocado")
                    .resizable()
                    .scaledToFit()
                    .padding(.top)
                    .frame(width: 100,height: 100,alignment: .center)
                    .shadow(color: Color("ColorBlackTransparantLight"), radius: 8,x: 0,y:4)

                
                Text("Avocados").textCase(.uppercase)
                    .font(.system(.title,design: .serif))
                    .fontWeight(.bold)
                .foregroundColor(Color("ColorGreenAdaptive"))
            })
            .padding()
            Form{
                // Mark:- SECTION #1
                Section(header: Text("General Setting")) {
                    Toggle(isOn: $enableNotification ){
                        
                            Text("Enable notification")
                      
                    }
                    Toggle(isOn: $backgrounRefresh){
                        Text("Backgrounfd refresh")
                    }
                }
                // Mark:- SECTION 2
                Section(header: Text("Application")) {
                    if enableNotification {
                        HStack(){
                            Text("Product").foregroundStyle(.gray)
                            Spacer()
                            Text("Avocado Recipes")
                        }
                        HStack(){
                            Text("Compatibility").foregroundStyle(.gray)
                            Spacer()
                            Text("iPhone & iPad")
                        }
                        HStack(){
                            Text("Developer").foregroundStyle(.gray)
                            Spacer()
                            Text("*******")
                        }
                        HStack(){
                            Text("Designer").foregroundStyle(.gray)
                            Spacer()
                            Text("*******")
                        }
                        HStack(){
                            Text("website").foregroundStyle(.gray)
                            Spacer()
                            Text("https://github.com/jinuparekatil/Avocados-SwiftUI")
                        }
                        HStack(){
                            Text("Version").foregroundStyle(.gray)
                            Spacer()
                            Text("1.0")
                        }
                    } else {
                        HStack{
                        Text("Personal message")
                                .foregroundStyle(.gray)
                        Spacer()
                        Text("Happy coding!")
                        }
                    }
                
                }
            }
        })
        .safeAreaPadding(.all)
    }
    
}

#Preview {
    SettingsView()
}
