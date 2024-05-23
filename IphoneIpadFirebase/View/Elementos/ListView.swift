//
//  ListView.swift
//  IphoneIpadFirebase
//
//  Created by Reales Rectoro Myles Clarence on 20/05/24.
//

import SwiftUI

struct ListView: View {
    var device = UIDevice.current.userInterfaceIdiom
    @Environment(\.horizontalSizeClass) var widthPhone
    
    func getColumns() -> Int{
        return (device == .pad) ? 3 : ((device == .phone && widthPhone == .regular) ? 3 : 1)
    }
    var plataforma : String
    @StateObject var datos = FirebaseViewModel()
//    @State private var showEditar = false
    var body: some View {
        ScrollView(.vertical,showsIndicators: false) {
            LazyVGrid(columns: Array(repeating: GridItem(.flexible(), spacing: 20), count: getColumns()), spacing: 20){
                ForEach(datos.datos){ item in
                    CardView(titulo: item.titulo, portada: item.portada, index: item, plataforma: plataforma)
                        .onTapGesture {
//                            showEditar.toggle()
                            datos.senData(item: item)
                            print(item)
                        }.sheet(isPresented: $datos.showEditar, content: {
                            EditarView(plataforma: plataforma, datos: datos.itemUpdate)
                        })
                        .padding(.all)
                }
                
            }
        }.onAppear{
            datos.getData(plataforma: plataforma)
        }
    }
}

