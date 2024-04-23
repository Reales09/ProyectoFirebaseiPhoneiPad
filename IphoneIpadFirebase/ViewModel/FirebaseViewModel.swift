//
//  FirebaseViewModel.swift
//  IphoneIpadFirebase
//
//  Created by Reales Rectoro Myles Clarence on 23/04/24.
//

import Foundation
import Firebase

class FirebaseViewModel: ObservableObject {
    @Published var show = false
    
    func login(email: String, pass: String, completion: @escaping (_ done: Bool) -> Void){
        Auth.auth().signIn(withEmail: email, password: pass){ (user, error) in
            if user != nil {
                print("entro")
                completion(true)
            }else{
                if let error = error?.localizedDescription{
                    print("Error en firebase", error)
                }else{
                    print("Error en la app")
                }
            }
        }
    }
}
