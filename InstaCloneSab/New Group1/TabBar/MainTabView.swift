//
//  MainTabView.swift
//  InstaCloneSab
//
//  Created by Suite on 2/09/23.
//

import SwiftUI

struct MainTabView: View {
    var body: some View {
        TabView{
          FeedView()
                .tabItem {
                    Image(systemName: "house.fill")
                }
           SearchView()
                .tabItem {
                    Image(systemName: "magnifyingglass")
                }
           UploadPostView()
                .tabItem {
                    Image(systemName: "plus.square")
                }
            Text("Cuarto Tab")
                .tabItem {
                    Image(systemName: "heart")
                }
            CurrentUserProfileView()
                .tabItem {
                    Image(systemName: "person")
                }
        }//End TabView
        .accentColor(.black)
    }
}

struct MainTabView_Previews: PreviewProvider {
    static var previews: some View {
        MainTabView()
    }
}
