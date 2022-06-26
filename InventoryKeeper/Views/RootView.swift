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
    var body: some View {
        TabView{
            InventoryView().tabItem{(Image(systemName: "house.fill"))}
            DebugView().tabItem{(Image(systemName: "wrench.and.screwdriver"))}
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        RootView()
    }
}
