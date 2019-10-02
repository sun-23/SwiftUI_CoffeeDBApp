//
//  DrinkItem.swift
//  CoffeeDBApp
//
//  Created by sun on 17/7/2562 BE.
//  Copyright © 2562 sun. All rights reserved.
//

import SwiftUI

struct DrinkItem : View {
    
    var drink:Drink
    
    var body: some View {
        VStack(alignment: .leading, spacing: 16.0) {
            Image(drink.imageName)
                .resizable()
                .renderingMode(.original)
                .aspectRatio(contentMode: .fill)
                .frame(width: 300, height: 170)
                .cornerRadius(10)
                .shadow(radius: 10)
            
            VStack(alignment: .leading, spacing: 5.0) {
                
                Text(drink.name)
                    .foregroundColor(.primary)
                .font(.headline)
                Text(drink.description)
                    .foregroundColor(.secondary)
                .font(.subheadline)
                .multilineTextAlignment(.leading)
                .lineLimit(2)
                .frame(height: 40)
                
            }
            
        }
    }
}

#if DEBUG
struct DrinkItem_Previews : PreviewProvider {
    static var previews: some View {
        DrinkItem(drink: drinkData[0])
    }
}
#endif
