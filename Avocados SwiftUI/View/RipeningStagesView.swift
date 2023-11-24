//
//  RipeningStagesView.swift
//  Avocados SwiftUI
//
//  Created by Jinu on 23/11/2023.
//

import SwiftUI

struct RipeningStagesView: View {
    
    // Mark:- PROPERTIES
    
    var ripeningStages : [Ripening] = ripeningData
    var body: some View {
        ScrollView(.horizontal,showsIndicators: false){
            VStack{
                Spacer()
                HStack(alignment: .center,spacing: 25, content: {
                    ForEach(ripeningStages){ item in
                        RipeningView(ripening: item)
                    }
                })
                .padding(.vertical)
                .padding(.horizontal,25)
                Spacer()
            }
        }
        .ignoresSafeArea(edges: .all)
    }
}

#Preview {
    RipeningStagesView(ripeningStages: ripeningData)
}
