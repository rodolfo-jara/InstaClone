//
//  ContentViewModel.swift
//  InstaCloneSab
//
//  Created by Suite on 4/11/23.
//

import Foundation
import FirebaseAuth
import Combine
class ContenViewModel:ObservableObject{
    
    private let service = authService.shared
    @Published var userSession:FirebaseAuth.User?
    private var cancellable = Set<AnyCancellable>()
    
    init() {
        setupSuscriber()
    }
    func setupSuscriber(){
        service.$userSession.sink { [weak self] userSession in
            self?.userSession = userSession
            
        }
        .store(in: &cancellable )
    }
        
}

