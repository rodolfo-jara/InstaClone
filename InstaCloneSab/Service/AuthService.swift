//
//  AuthService.swift
//  InstaCloneSab
//
//  Created by Suite on 4/11/23.
//

import Foundation
import FirebaseAuth

class authService{
    //contenido publicador
    @Published var userSession:FirebaseAuth.User?
    //patron singleton
    static let shared = authService()
    //constructor
    init() {
        self.userSession = Auth.auth().currentUser
    }
    
    //INICIAR SESION
    func login(email:String,password:String) async throws{
    }
    //CREAR USUSARIO
    func createUser(email:String,userName:String,password:String) async throws{
    }
    //LISTAR USUARIOS
    func loadUsers() async throws{
        
    }
    //SERRAR SESION
    func singOut(){
    }
}

