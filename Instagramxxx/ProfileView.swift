//
//  ProfileView.swift
//  Instagramxxx
//
//  Created by Artak Mheryan on 08.08.23.
//

import SwiftUI

struct ProfileView: View {
    let user: User
    
    
    
    var posts:[Post] {
        return Post.MOC_POSTS.filter( {
            $0.user?.username == user.username
        })
    }
    
    
    
    var body: some View {
        
        ScrollView {
            
            CurrentUserProfileView(user: user)
            
            PostsGridView(posts: posts)
        }
        
        .navigationTitle("Profile")
        .navigationBarTitleDisplayMode(.inline)
    }
    }





struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView(user: User.MOC_USERS[0])
    }
}

