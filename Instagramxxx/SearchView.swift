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
                    ForEach(0...100,id: \.self) { index in
                        HStack{
                            Image("222")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 50, height: 50)
                                .clipShape(Circle())
                            VStack {
                                Text("Audi")
                                    .fontWeight(.semibold)
                                Text("Arnold")
                            }
                            .font(.footnote)
                            Spacer()
                        }
                        .padding(.horizontal)
                        
                    }
                }
                .padding(.top,30)
                .searchable(text: $searchText, prompt: "Search ....")
            }
            
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
