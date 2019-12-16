//
//  MenuView.swift
//  Tabbar
//
//  Created by nhatle on 12/16/19.
//  Copyright © 2019 VNG. All rights reserved.
//

import SwiftUI

struct MenuView: View {
    
    @EnvironmentObject var order: Order
    
    var body: some View {
        VStack {
            Button(action:{
                self.order.add(item: "item")
            }) {
                Image(systemName: "cart.badge.plus")
                Text("Add to cart")
            }.padding(.bottom, 30.0)
            Button(action:{
                self.order.remove(item: "item")
            }) {
                Image(systemName: "cart.badge.minus")
                Text("Remove from cart")
            }
        }
    }
    
}

struct MenuView_Previews: PreviewProvider {
    static let order = Order()
    static var previews: some View {
        MenuView().environmentObject(order)
    }
}
