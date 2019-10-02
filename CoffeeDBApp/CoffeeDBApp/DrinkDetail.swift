//
//  DrinkDetail.swift
//  CoffeeDBApp
//
//  Created by sun on 17/7/2562 BE.
//  Copyright © 2562 sun. All rights reserved.
//

import SwiftUI

struct DrinkDetail : View {
    
    var drink : Drink
    
    var body: some View {
        List() {
            ZStack (alignment: .bottom) {
                Image(drink.imageName)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    RoundedRectangle(cornerRadius: 0)
                        .frame(height: 80)
                        .opacity(0.25)
                        .blur(radius: 10)
                        HStack {
                            VStack{
                                Text(drink.name)
                                    .foregroundColor(.white)
                                    .font(.largeTitle)
                            }
                            .padding(.leading)
                            .padding(.bottom)
                            Spacer()
                        }
                    }
                .listRowInsets(EdgeInsets())
            
            VStack(alignment: .leading) {
                Text(drink.description)
                    .foregroundColor(.primary)
                    .font(.body)
                    .lineLimit(nil)
                    .lineSpacing(0)
                
                HStack {
                    Spacer()
                    OrderButton()
                    Spacer()
                }.padding(.top, 50)
            }.padding(.top)
            .padding(.bottom)
            
        }.edgesIgnoringSafeArea(.top)
        .navigationBarHidden(true)
    }
}

struct OrderButton :View {
    var body: some View {
        Button(action: {}) {
            Text("Order Now")
        }.frame(width: 200, height: 50)
        .font(.headline)
        .foregroundColor(Color.white)
        .background(Color.blue)
        .cornerRadius(10)
    }
}

#if DEBUG
struct DrinkDetail_Previews : PreviewProvider {
    static var previews: some View {
        DrinkDetail(drink: drinkData[4])
    }
}
#endif
