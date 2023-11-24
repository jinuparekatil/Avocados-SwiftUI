//
//  RipeningModel.swift
//  Avocados SwiftUI
//
//  Created by Jinu on 24/11/2023.
//

import SwiftUI

// Mark:- RIPENING MODEL

struct Ripening: Identifiable{
    var id = UUID()
    var image : String
    var stage: String
    var title : String
    var description : String
    var ripeness : String
    var instruction : String
}
