//
//  IphoneIpadFirebaseApp.swift
//  IphoneIpadFirebase
//
//  Created by Reales Rectoro Myles Clarence on 19/04/24.
//

import SwiftUI

@main
struct IphoneIpadFirebaseApp: App {
    
    @UIApplicationDelegateAdaptor(AppDelegate.self) var appDelegate
    
    var body: some Scene {
        let login = FirebaseViewModel()
        WindowGroup {
            ContentView().environmentObject(login)
//            Home().edgesIgnoringSafeArea(.all)
//                .preferredColorScheme(.dark)
        }
    }
}
