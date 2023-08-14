//
//  ProfileView.swift
//  Instagramxxx
//
//  Created by Artak Mheryan on 08.08.23.
//

import SwiftUI

struct ProfileView: View {
    let gridItems: [GridItem] = [
        
        .init(.flexible(), spacing: 1),
        .init(.flexible(), spacing: 1),
        .init(.flexible(), spacing: 1),
        
    ]
    
    var body: some View {
        NavigationStack {
            ScrollView {
                VStack {
                    VStack( spacing: 1) {
                        HStack {
                            Image("222")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 80, height: 80)
                                .clipShape(Circle())
                            
                            Spacer()
                            
                            HStack(spacing: 8) {
                                UserStatView(value: 3, title: "Posts")
                                
                                UserStatView(value: 5, title: "Followers")
                                
                                UserStatView(value: 88, title: "Following")
                                
                            }
                        }
                        .padding(.horizontal)
                       
                        VStack(alignment: .leading,spacing: 4) {
                            Text("Chadwick Nigetman")
                                .font(.footnote)
                                .fontWeight(.semibold)
                            Text("Vakanda Forever")
                                .font(.footnote)
                            
                        }
                        .frame(maxWidth: .infinity , alignment: .leading)
                        .padding()
                        Button {
                            
                        } label: {
                            Text("Edit Profile")
                                .font(.subheadline)
                                .fontWeight(.semibold)
                                .frame(width: 360 , height: 32)
                                .foregroundColor(Color.black)
                                .overlay {
                                    RoundedRectangle(cornerRadius: 6)
                                        .stroke(Color.gray, lineWidth: 1)
                                }
                        }
                        
                    }
                    Divider()
                }
                
                
                
                LazyVGrid(columns: gridItems) {
                    ForEach(0...15, id: \.self){ index in
                        Image("222")
                            .resizable()
                            .scaledToFit()
                        
                  }
                }
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

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}

