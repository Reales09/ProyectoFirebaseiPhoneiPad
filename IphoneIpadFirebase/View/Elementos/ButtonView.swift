//
//  ButtonView.swift
//  IphoneIpadFirebase
//
//  Created by Reales Rectoro Myles Clarence on 19/04/24.
//

import SwiftUI

struct ButtonView: View {
    @Binding var index : String
    @Binding var menu : Bool
    var title : String
    
    var body: some View {
        Button(action:{
            withAnimation{
                index = title
            }
        }){
            Text(title)
                .font(.title)
                .fontWeight(index == title ? .bold : .none)
                .foregroundColor(index == title ? .white : Color.white.opacity(0.6) )
        }
    }
}

//#Preview {
//    ButtonView(index: "1", menu: false, title: "Titulo")
//}
