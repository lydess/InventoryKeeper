//
//  AddItemView.swift
//  InventoryKeeper
//
//  Created by william Vise on 26/6/2022.
//

import SwiftUI

struct AddItemView: View {
    @StateObject var ViewState = GlobalState
    @State var itemNameField = ""
    @State var itemSizeField = ""
    @State var itemValueField = 0
    var body: some View {
        Form{
            TextField("Item Name", text: $itemNameField)
            TextField("Size", text: $itemSizeField)
            Button("submit"){
                ViewState.edititem(UUID(), name: itemNameField, size: itemSizeField, 5)
                ViewState.commititem(itemtoadd: ViewState.pendingitem)
            }
        }.buttonStyle(.bordered)
        
    }
}

struct AddItemView_Previews: PreviewProvider {
    static var previews: some View {
        AddItemView()
    }
}
