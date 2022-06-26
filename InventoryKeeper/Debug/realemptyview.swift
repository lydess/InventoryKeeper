//
//  realemptyview.swift
//  InventoryKeeper
//
//  Created by william Vise on 26/6/2022.
//

import SwiftUI

struct realemptyview: View {
    var body: some View {
        VStack {
            EmptyView()
        }.frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height-110, alignment: .top).background(debug.testcolor)
    }
}

struct realemptyview_Previews: PreviewProvider {
    static var previews: some View {
        realemptyview()
    }
}
