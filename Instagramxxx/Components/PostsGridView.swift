//
//  PostsGridView.swift
//  Instagramxxx
//
//  Created by Artak Mheryan on 18.08.23.
//

import SwiftUI

struct PostsGridView: View {
    var posts: [Post]
    
    
  private  let gridItems: [GridItem] = [
        
        .init(.flexible(), spacing: 1),
        .init(.flexible(), spacing: 1),
        .init(.flexible(), spacing: 1),
        
    ]
 
    
    private let imageDimension: CGFloat = (UIScreen.main.bounds.width / 3) - 1
    
    
    var body: some View {
        LazyVGrid(columns: gridItems) {
            ForEach(posts){ post in
                Image(post.imageUrl)
                    .resizable()
                    .scaledToFill()
                    .frame(width: imageDimension, height: imageDimension)
                    .clipped()
                
            }
        }
    }
}

struct PostsGridView_Previews: PreviewProvider {
    static var previews: some View {
        PostsGridView(posts: Post.MOC_POSTS)
    }
}
