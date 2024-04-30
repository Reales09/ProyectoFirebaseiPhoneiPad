//
//  AddView.swift
//  IphoneIpadFirebase
//
//  Created by Reales Rectoro Myles Clarence on 29/04/24.
//

import SwiftUI

struct AddView: View {
    
    @State private var titulo = ""
    @State private var desc = ""
    var consolas = ["Playstation","Xbox","Nintendo"]
    @State private var plataforma = "playstation"
    @StateObject var guardar = FirebaseViewModel()
    
    
    var body: some View {
        ZStack{
            Color.yellow.edgesIgnoringSafeArea(.all)
            VStack{
                TextField("Titulo", text: $titulo)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                TextEditor(text: $desc)
                    .frame(height: 200)
                Picker("Consolas",selection: $plataforma){
                    ForEach(consolas, id:\.self){ item in
                        Text(item).foregroundColor(.black)
                        
                    }
                }
                Button(action:{
                    guardar.save(titulo: titulo, desc: desc, plataforma: plataforma, portada: "ruta", completion: {(done) in
                        if done {
                            titulo = ""
                            desc = ""
                        }
                    })
                }){
                    Text("Guardar")
                        .foregroundColor(.black)
                        .bold()
                        .font(.largeTitle)
                }
                Spacer()
            }.padding()
        }
    }
}
