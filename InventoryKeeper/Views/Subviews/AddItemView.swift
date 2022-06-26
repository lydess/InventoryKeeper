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
    @State var showErrorAlert = false
    var body: some View {
        VStack {
            Form{
                TextField("Item Name", text: $itemNameField)
                TextField("Size", text: $itemSizeField)
                
            }.alert("Failed to save", isPresented: $showErrorAlert, actions: {})
            Button("Submit"){var editreturn = 0
                ViewState.edititem(name: itemNameField, size: itemSizeField)
                editreturn = ViewState.commititem(itemtoadd: ViewState.pendingitem)
                if editreturn == 0 {} else {showErrorAlert.toggle()}
                
            }.frame(width: 500, height: 500).buttonStyle(.bordered).cornerRadius(10).font(.headline).offset(x: 0, y: -350)
        }.background(debug.testcolor)
        
    }
}

struct AddItemView_Previews: PreviewProvider {
    static var previews: some View {
        AddItemView()
    }
}
