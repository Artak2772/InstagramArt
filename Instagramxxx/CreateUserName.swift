//
//  CreateUserName.swift
//  Instagramxxx
//
//  Created by Artak Mheryan on 15.08.23.
//

import SwiftUI

struct CreateUserName: View {
    @State private var textField : String = ""
    @Environment(\.dismiss) var dismiss
    var body: some View {
        VStack( spacing: 20){
            Text("Create Username")
                .font(.title2)
                .fontWeight(.bold)
                .padding(.top)
            Text("you'll use this email to sign in to in your Account")
                .font(.footnote)
                .foregroundColor(.gray)
                .multilineTextAlignment(.center)
                .padding(.horizontal,24)
            
            
            TextField("Username", text: $textField)
                .autocapitalization(.none)
                .font(.subheadline)
                .padding(12)
                .background(Color(.systemGray6))
                .cornerRadius(10)
                .padding(.horizontal,24)
                .padding(.top)
            
            NavigationLink {
                CreatePasswordView()
                    .navigationBarBackButtonHidden(true)
            } label: {
                Text("Next")
                    .font(.subheadline)
                    .fontWeight(.semibold)
                    .foregroundColor(.white)
                    .frame(width: 360, height: 40)
                    .background(Color(.systemBlue))
                    .cornerRadius(8)
                
                
            }
            .padding(.vertical)
            Spacer()
        }
        
        .toolbar {
            ToolbarItem(placement: .navigationBarLeading) {
                Image(systemName: "chevron.left")
                    .scaledToFit()
                    .onTapGesture {
                        dismiss()
                    }
            }
        }
    }
}
struct CreateUserName_Previews: PreviewProvider {
    static var previews: some View {
        CreateUserName()
    }
}
