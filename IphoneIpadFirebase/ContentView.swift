//
//  ContentView.swift
//  IphoneIpadFirebase
//
//  Created by Reales Rectoro Myles Clarence on 19/04/24.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject var loginShow : FirebaseViewModel
    var body: some View {
        return Group{
            if loginShow.show {
                Home().edgesIgnoringSafeArea(.all)
                   .preferredColorScheme(.dark)
            }else{
                Login()
            }
        }
    }
}

#Preview {
    ContentView()
}
