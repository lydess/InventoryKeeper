//
//  GlobalStructs.swift
//  InventoryKeeper
//
//  Created by william Vise on 26/6/2022.
//

import Foundation

struct Item:Hashable {
    var id: UUID
    var name: String
    var size: String
    var value: Int
}
