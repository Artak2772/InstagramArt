//
//  CurrentUserProfileView.swift
//  Instagramxxx
//
//  Created by Artak Mheryan on 18.08.23.
//

import SwiftUI

struct CurrentUserProfileView: View {
    let user: User
    
  private var posts:[Post] {
        return Post.MOC_POSTS.filter({
            $0.user?.username == user.username})
    }
    var body: some View {
        NavigationStack {
            ScrollView {
                ProfileHeaderView(user: user)
                
                PostsGridView(posts: posts)
                
              }
            .navigationTitle("Profile")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button {
                        
                    } label: {
                        Image(systemName: "line.horizontal.3")
                            .foregroundColor(Color.black)
                    }


                }
            }
        }
    }
}

struct CurrentUserProfileView_Previews: PreviewProvider {
    static var previews: some View {
        CurrentUserProfileView(user: User.MOC_USERS[0])
    }
}
