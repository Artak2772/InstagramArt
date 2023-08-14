//
//  FeedCell.swift
//  Instagramxxx
//
//  Created by Artak Mheryan on 14.08.23.
//

import SwiftUI

struct FeedCell: View {
    var body: some View {
        VStack {
            HStack {
                Image("222")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 40, height: 40)
                    .clipShape(Circle())
                Text("Audi")
                    .font(.footnote)
                    .fontWeight(.semibold)
                Spacer()
            }
            .padding(.leading ,8)
            
            Image("222")
                .resizable()
                .scaledToFit()
                .frame(width: 400)
                .clipShape(Rectangle())
            
            
            HStack ( spacing: 16){
                Button {
                    print("like Post")
                } label: {
                    Image(systemName: "heart")
                        .imageScale(.large)
                }
                Button {
                    print("Comment on Post")
                } label: {
                    Image(systemName: "bubble.right")
                        .imageScale(.large)
                }
                Button {
                    print("share Post")
                } label: {
                    Image(systemName: "paperplane")
                        .imageScale(.large)
                    
                }
                Spacer()
            }
            .padding(.leading,8)
            .padding(.top , 4)
        }
    }
}

struct FeedCell_Previews: PreviewProvider {
    static var previews: some View {
        FeedCell()
    }
}