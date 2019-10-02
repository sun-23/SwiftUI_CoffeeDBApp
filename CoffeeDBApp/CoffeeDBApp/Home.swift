//
//  ContentView.swift
//  CoffeeDBApp
//
//  Created by sun on 17/7/2562 BE.
//  Copyright © 2562 sun. All rights reserved.
//

import SwiftUI

struct HomeView : View {
    
    var categories : [String:[Drink]] {
        .init(
            grouping : drinkData,
            by: {$0.category.rawValue}
        )
    }
    
    var body: some View {
        NavigationView{
            List (categories.keys.sorted(), id: \String.self) { key in
                DrinkRow(categoryName: "\(key) DRINKS", drinks: self.categories[key]!)
                    .frame(height: 320)
                .padding(.top)
                .padding(.bottom)
            }
            .navigationBarTitle(Text("COFFEE DB"))
        }
    }
}

#if DEBUG
struct HomeView_Previews : PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
#endif
