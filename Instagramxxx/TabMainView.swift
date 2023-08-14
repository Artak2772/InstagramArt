//
//  TabMainView.swift
//  Instagramxxx
//
//  Created by Artak Mheryan on 07.08.23.
//

import SwiftUI

struct TabMainView: View {
    
    var body: some View {
        
        TabView {
            
            FeedView()
                .tabItem {
                    Image(systemName: "house")
                    
                }
            SearchView()
                .tabItem{
                    Image(systemName: "magnifyingglass")
                }
            Text("Upload Post")
                .tabItem {
                    Image(systemName: "arrow.down.circle")
                }
            Text("Like")
                .tabItem{
                    Image(systemName: "heart.fill")
                }
            ProfileView()
                .tabItem{
                    Image(systemName: "person")
                }
            
        }
        .accentColor(.black)
        
    }
}

struct TabMainView_Previews: PreviewProvider {
    static var previews: some View {
        TabMainView()
    }
}
