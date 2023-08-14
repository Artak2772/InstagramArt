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
            .foregroundColor(.black)
            
                Text("44 Like")
                    .font(.footnote)
                    .fontWeight(.semibold)
                    .frame( maxWidth: .infinity, alignment: .leading)
                    .padding(.leading,10)
                    .padding(.top,1)
            HStack{
                Text("Audi").fontWeight(.semibold) +
                Text("This is some test")
                    
            }
            .frame( maxWidth: .infinity,   alignment: .leading)
            .font(.footnote)
            .padding(.leading,10)
            .padding(.top,1)
            
            Text("8h Ago")
                .font(.footnote)
                .frame(maxWidth: .infinity ,alignment: .leading)
                .padding(.leading,10)
                .padding(.leading,1)
                .foregroundColor(.gray)
            
                .padding(.top,5)
        }
    }
}

struct FeedCell_Previews: PreviewProvider {
    static var previews: some View {
        FeedCell()
    }
}
