//
//  GlobalState.swift
//  InventoryKeeper
//
//  Created by william Vise on 26/6/2022.
//

import Foundation

final class StateManager: ObservableObject {
    @Published var havePressed = false
    @Published var Itemlist = [Item]()
    @Published private var debugitem = Item(id: UUID(), name: "Brick", size: "Bricksized", value: 5)
    @Published var isaddingitem = false
    @Published var pendingitem = Item(id: UUID(), name: "", size: "", value: 9684)
    
    
    
    func additem() {
        Itemlist.append(debugitem)
    }
    func commititem(itemtoadd: Item) -> Int {
        if itemtoadd.value != 9684 && itemtoadd.name != "" {
            Itemlist.append(itemtoadd)
        } else {
          
            return 1
        }
        return 0
    }
    func edititem( id: UUID? = UUID(), name:String? = "", size:String? = "", value:Int? = 9684) {
        pendingitem.id = id ?? UUID()
        pendingitem.name = name ?? ""
        pendingitem.size = size ?? ""
        pendingitem.value = value ?? 9684
    }
}
