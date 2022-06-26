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
    private var debugitem = Item(id: UUID(), name: "Brick", size: "Bricksized", value: 5)
    func additem() {
        Itemlist.append(debugitem)
    }
}
