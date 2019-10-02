//
//  DrinkRow.swift
//  CoffeeDBApp
//
//  Created by sun on 17/7/2562 BE.
//  Copyright © 2562 sun. All rights reserved.
//

import SwiftUI

struct DrinkRow : View {
    
    var categoryName: String
    var drinks:[Drink]
    
    var body: some View {
        VStack(alignment:   HorizontalAlignment.leading) {
            
            Text(self.categoryName)
            .font(.title)
            
            ScrollView(.horizontal) {
                HStack(alignment: .top) {
                    ForEach (self.drinks, id: \.name) { drink in
                        
                        NavigationLink(destination: DrinkDetail(drink: drink)) {
                                DrinkItem(drink: drink)
                                   .frame(width: 300)
                                   .padding(.trailing, 30)
                        }
                    }
                }
            }
        }
    }
}

#if DEBUG
struct DrinkRow_Previews : PreviewProvider {
    static var previews: some View {
        DrinkRow(categoryName: "HOT DRINKS", drinks: drinkData)
    }
}
#endif
