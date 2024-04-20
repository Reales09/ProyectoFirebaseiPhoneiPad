//
//  Home.swift
//  IphoneIpadFirebase
//
//  Created by Reales Rectoro Myles Clarence on 19/04/24.
//

import SwiftUI

struct Home: View {
    @State private var index = "Playstation"
    @State private var menu = false
    var body: some View {
        ZStack{
            VStack{
                NavBar(index: $index
                       , menu: $menu)
            }
        }
    }
}

#Preview {
    Home()
}
