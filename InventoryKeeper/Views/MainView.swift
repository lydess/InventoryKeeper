//
//  MainView.swift
//  InventoryKeeper
//
//  Created by william Vise on 26/6/2022.
//

import Foundation
import SwiftUI


struct MainView: View {
    @StateObject var ViewState = GlobalState
    var body: some View {
        
        VStack {
            NavigationView{
                Section{
                List(ViewState.Itemlist, id: \.self) { Inven in
                
                    NavigationLink(Inven.name, destination: {Text(Inven.size)})
            
                }.listStyle(.plain)
                }
                Section{
                    Text("d")
                }
                
                
            }.onAppear(){ViewState.additem()}
        }
        
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
