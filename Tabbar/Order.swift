//
//  Order.swift
//  Tabbar
//
//  Created by nhatle on 12/16/19.
//  Copyright © 2019 VNG. All rights reserved.
//

import SwiftUI

class Order: ObservableObject {
    @Published var items = [String]()
    
    func add(item: String) {
        items.append(item)
    }
    
    func remove(item: String) {
        guard let index = items.firstIndex(where: {$0 == item }) else {
            return
        }
        items.remove(at: index)
    }
}
