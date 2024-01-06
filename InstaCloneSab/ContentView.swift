//
//  ContentView.swift
//  InstaCloneSab
//
//  Created by Suite on 2/09/23.
//

import SwiftUI

struct ContentView: View {
    @StateObject var viewModel = ContenViewModel()
    var body: some View {
        
        Group{
            if viewModel.userSession == nil{
                LoginView()
            } else {
                MainTabView()
            }
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
