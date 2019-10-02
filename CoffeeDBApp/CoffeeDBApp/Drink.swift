//
//  Drink.swift
//  CoffeeDBApp
//
//  Created by sun on 17/7/2562 BE.
//  Copyright © 2562 sun. All rights reserved.
//

import Foundation
import SwiftUI

struct Drink : Hashable, Codable,Identifiable {
    
    var id:Int
    var name: String
    var imageName:String
    var category : Category
    var description : String
    
    enum Category : String , CaseIterable , Codable , Hashable {
        case hot = "HOT"
        case cold = "COLD"
    }
    
}
