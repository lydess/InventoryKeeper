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
    @State var selection = 2
    var body: some View {
        VStack {
            switch selection {
            case 0: realemptyview()
            case 1: realemptyview()
            case 2: InventoryView()
            default: realemptyview()
            }
            HStack{
                Button(action: {selection = 2}, label: {Image(systemName: "list.bullet.clipboard.fill").resizable()}).frame(width: 20, height: 20, alignment: .leading)
                
            
            
            }.frame(width: UIScreen.main.bounds.width, height: 20, alignment: .bottom)
        }.background(debug.testcolor)
}
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        RootView()
    }
}
