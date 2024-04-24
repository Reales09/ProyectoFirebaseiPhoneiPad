//
//  Login.swift
//  IphoneIpadFirebase
//
//  Created by Reales Rectoro Myles Clarence on 24/04/24.
//

import SwiftUI

struct Login: View {
    @State private var email = ""
    @State private var password = ""
    @StateObject private var login = FirebaseViewModel()
    @EnvironmentObject var loginShow : FirebaseViewModel
    var device = UIDevice.current.userInterfaceIdiom


    var body: some View {
        ZStack{
            Color.purple.edgesIgnoringSafeArea(.all)
            VStack{
                Text("My Games")
                    .font(.largeTitle)
                    .foregroundColor(.white)
                    .bold()
                TextField("Email", text: $email)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .keyboardType(.emailAddress)
                    .disableAutocorrection(true)
                    .autocapitalization(.none)
                    .frame(width: device == .pad ? 400 : nil)
                SecureField("pass", text: $password)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .frame(width: device == .pad ? 400 : nil)
                
            }.padding(.all)
        }
    }
}

#Preview {
    Login()
}
