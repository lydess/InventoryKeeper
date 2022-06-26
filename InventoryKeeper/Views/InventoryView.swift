//
//  MainView.swift
//  InventoryKeeper
//
//  Created by william Vise on 26/6/2022.
//

import Foundation
import SwiftUI


struct InventoryView: View {
    @StateObject var ViewState = GlobalState
    var body: some View {
            VStack {
                NavigationView{
                    List(ViewState.Itemlist, id: \.self) { Inven in
                        NavigationLink(Inven.name, destination: {Text(Inven.size)}).padding()
                    }.background(debug.testcolor).listStyle(.sidebar)
                    
                }.background(debug.testcolor)
             
                Button("additem"){
                    ViewState.additem()
                    
                }.background(debug.testcolor)
                        }.background(debug.testcolor)
        }
}

struct InventoryView_Previews: PreviewProvider {
    static var previews: some View {
        InventoryView()
    }
}
