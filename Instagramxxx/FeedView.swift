//
//  FeedView.swift
//  Instagramxxx
//
//  Created by Artak Mheryan on 14.08.23.
//

import SwiftUI

struct FeedView: View {
    var body: some View {
        NavigationStack {
            ScrollView {
                LazyVStack (spacing: 16){
                    ForEach(Post.MOC_POSTS) { post in
                        FeedCell(post: post)
                    }
                    
                }
                .padding(.top,10)
            }
            .padding(.bottom,0)
            
            .navigationTitle("Feed")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                
                ToolbarItem(placement: .navigationBarLeading) {
                    Image("Instagram-wordmark-01")
                        .resizable()
                        .frame(width: 100, height: 90)
                        .padding(.top,2)
                        
                    
                }
                ToolbarItem(placement: .navigationBarTrailing) {
                    Image(systemName: "paperplane")
                        .imageScale(.large)
                        
                }
            }
        }
        
        
        
        
        
        
        
        
        
        
    }
}
struct FeedView_Previews: PreviewProvider {
    static var previews: some View {
        FeedView()
    }
}
