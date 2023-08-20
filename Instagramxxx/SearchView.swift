//
//  SearchView.swift
//  Instagramxxx
//
//  Created by Artak Mheryan on 14.08.23.
//

import SwiftUI

struct SearchView: View {
    @State private var searchText : String = ""
    var body: some View {
        NavigationStack {
            ScrollView {
                LazyVStack( spacing: 12) {
                    ForEach(User.MOC_USERS) { user in
                        NavigationLink(value: user, label: {
                            HStack{
                                Image(user.profileImageUrl ?? "")
                                    .resizable()
                                    .scaledToFill()
                                    .frame(width: 60, height: 60)
                                    .clipShape(Circle())
                                
                                VStack (alignment: .leading) {
                                    Text(user.username)
                                        .fontWeight(.semibold)
                                    
                                    if let fullName = user.fullName {
                                        Text(fullName)
                                    }
                                }
                                .font(.footnote)
                                .foregroundColor(.black)
                                Spacer()
                            }
                            
                        })
                        
                        
                        
                        
                        
                        
                        
                        
                        .padding(.horizontal)
                        
                    }
                }
                .padding(.top,30)
                .searchable(text: $searchText, prompt: "Search ....")
            }
            .navigationDestination(for: User.self, destination: { user in
                ProfileView(user: user)
          })
            
            .navigationTitle("Explore")
            .navigationBarTitleDisplayMode(.inline)
        }
        
        
        
        
    }
}

struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        SearchView()
    }
}
