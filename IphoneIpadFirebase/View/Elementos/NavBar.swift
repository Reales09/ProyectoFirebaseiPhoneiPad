//
//  NewBar.swift
//  IphoneIpadFirebase
//
//  Created by Reales Rectoro Myles Clarence on 19/04/24.
//

import SwiftUI
import Firebase

struct NavBar: View {
    
    var device = UIDevice.current.userInterfaceIdiom
    @Binding var index : String
    @Binding var menu : Bool
    @EnvironmentObject var loginShow : FirebaseViewModel
    var body: some View {
        HStack{
            Text("My Games")
                .font(.title)
                .bold()
                .foregroundColor(.white)
                .font(.system(size: device == .phone ? 25 : 35))
            Spacer()
            
            if device == .pad{
                // MENU iPad
                HStack(spacing: 25){
                    ButtonView(index: $index, menu: $menu, title: "Playstation")
                    ButtonView(index: $index, menu: $menu, title: "Xbox")
                    ButtonView(index: $index, menu: $menu, title: "Nintendo")
                    Button(action:{
                        try! Auth.auth().signOut()
                        UserDefaults.standard.removeObject(forKey: "sesion")
                        loginShow.show = false
                    }){
                        Text("Salir")
                            .font(.title)
                            .frame(width: 200)
                            .foregroundColor(.white)
                            .padding(.horizontal, 10)
                    }.background(
                        Capsule().stroke(Color.white)
                    )
                }
                
            }else{
                // Menu iPhone
                Button(action:{
                    withAnimation{
                        menu.toggle()
                    }
                }){
                    Image(systemName: "line.horizontal.3")
                        .font(.system(size: 26))
                        .foregroundColor(.white)
                }
            }
            
        }
        .padding()
        .padding(.top, 50)
        .background(Color.purple)
    }
}

//#Preview {
//    NavBar(index: $index, menu: $menu)
//}
