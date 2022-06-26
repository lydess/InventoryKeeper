//
//  ContentView.swift
//  InventoryKeeper
//
//  Created by william Vise on 26/6/2022.
//

import SwiftUI

let GlobalState = StateManager()
let debug = Debug()
struct RootView: View {
    @StateObject var ViewState = GlobalState
    @State var selection = 0
    var body: some View {
        VStack {
            switch selection {
            case 0: EmptyView().frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height, alignment: .center)
            case 1: InventoryView()
            default: EmptyView()
            }
            HStack{
                Button(action: {selection = 1}, label: {Image(systemName: "house.fill").resizable()}).frame(width: 20, height: 20, alignment: .leading)
                
            
            
            }.frame(width: UIScreen.main.bounds.width, height: 20, alignment: .bottom)
        }
}
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        RootView()
    }
}
