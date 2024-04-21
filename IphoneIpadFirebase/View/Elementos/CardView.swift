//
//  CardView.swift
//  IphoneIpadFirebase
//
//  Created by Reales Rectoro Myles Clarence on 19/04/24.
//

import SwiftUI

struct CardView: View {
    var body: some View {
        VStack(spacing: 20){
            Image("darksouls")
                .resizable()
                .aspectRatio(contentMode: .fit)
            Text("Dark souls")
                .font(.title)
                .bold()
                .foregroundColor(.black)
        }.padding()
            .background(Color.white)
            .cornerRadius(20)
    }
}

#Preview {
    CardView()
}
