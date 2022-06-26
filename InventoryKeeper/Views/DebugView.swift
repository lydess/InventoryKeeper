//
//  DebugView.swift
//  InventoryKeeper
//
//  Created by william Vise on 26/6/2022.
//

import SwiftUI

struct DebugView: View {
    var testcolor = Color(.sRGB, red: 255, green: 100, blue: 100, opacity: 1.0)
    var othercolor = Color(cgColor: CGColor(red: 255, green: 200, blue: 0, alpha: 1))
    var body: some View {
        VStack {
            Text("Welcome to Debug Hell")
            Text("Builtin Background").background(.red)
            Text("self made background").background(othercolor)
        }
    }
}

struct DebugView_Previews: PreviewProvider {
    static var previews: some View {
        DebugView()
    }
}
