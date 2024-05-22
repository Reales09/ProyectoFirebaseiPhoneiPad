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
    @State private var widthMenu = UIScreen.main.bounds.width
  
    
    var body: some View {
        ZStack{
            VStack{
                NavBar(index: $index
                       , menu: $menu)
                ZStack{
                    if index == "Playstation"{
                        ListView(plataforma: "Playstation")
                        
                    }else if index == "Xbox"{
                        ListView(plataforma: "Xbox")

                    }else if index == "Nintendo"{
                        ListView(plataforma: "Nintendo")

                    }else{
                        AddView()
                    }
                }
            }
            //Termina nav bar ipad
            if menu {
                HStack{
                    Spacer()
                    VStack{
                        HStack{
                            Spacer()
                            Button(action:{
                                withAnimation{
                                    menu.toggle()
                                }
                            }){
                                Image(systemName: "xmark")
                                    .font(.system(size: 22, weight: .bold))
                                    .foregroundColor(.white)
                            }
                        }.padding()
                            .padding(.top, 50)
                        VStack(alignment: .leading){
                            ButtonView(index: $index, menu: $menu, title: "Playstation")
                            ButtonView(index: $index, menu: $menu, title: "Xbox")
                            ButtonView(index: $index, menu: $menu, title: "Nintendo")
                        }
                        Spacer()
                    }
                    .frame(width: widthMenu - 200)
                    .background(Color.purple)
                }
            }
        }.background(Color.white.opacity(0.9))
    }
}

#Preview {
    Home()
        .edgesIgnoringSafeArea(.all)
}
