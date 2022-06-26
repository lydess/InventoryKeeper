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
        
        ZStack {
            VStack{
                
            }.frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height + 0, alignment: .center)
            VStack {
                NavigationView{
                    Section{
                    List(ViewState.Itemlist, id: \.self) { Inven in
                    
                        NavigationLink(Inven.name, destination: {Text(Inven.size)})
                
                    }
                        
                    }
                    
                    
                    
                    
                }.onAppear(){ViewState.additem()}
              Spacer()
                Text("d")
                
               
                    
            }
            
            
        }.background(.red)
        
    }
}

struct InventoryView_Previews: PreviewProvider {
    static var previews: some View {
        InventoryView()
    }
}
