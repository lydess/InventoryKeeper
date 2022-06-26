//
//  ContentView.swift
//  InventoryKeeper
//
//  Created by william Vise on 26/6/2022.
//

import SwiftUI

let GlobalState = StateManager()
struct RootView: View {
    @StateObject var ViewState = GlobalState
    var body: some View {
        MainView()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        RootView()
    }
}
