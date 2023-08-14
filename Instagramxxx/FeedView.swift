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
                LazyVStack (spacing: 34){
                    ForEach(0...30 , id: \.self ) { index in
                        FeedCell()
                    }
                    
                }
                .padding(.top,10)
            }
            .padding(.bottom,100)
            
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
                        .imageScale(.medium)
                        
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
