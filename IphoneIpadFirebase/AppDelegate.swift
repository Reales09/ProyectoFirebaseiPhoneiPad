//
//  AppDelegate.swift
//  IphoneIpadFirebase
//
//  Created by Reales Rectoro Myles Clarence on 22/04/24.
//

import UIKit
import Firebase

class AppDelegate: NSObject, UIApplicationDelegate{
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
        FirebaseApp.configure()
        return true
    }
}

