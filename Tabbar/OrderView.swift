//
//  OrderView.swift
//  Tabbar
//
//  Created by nhatle on 12/16/19.
//  Copyright © 2019 VNG. All rights reserved.
//

import SwiftUI

struct OrderView: View {
    @EnvironmentObject var order: Order
    var body: some View {
        List {
            ForEach(order.items, id: \.self) {
                Text($0)
            }
        }
    }
}

struct OrderView_Previews: PreviewProvider {
    static let order = Order()
    static var previews: some View {
        OrderView().environmentObject(order)
    }
}
