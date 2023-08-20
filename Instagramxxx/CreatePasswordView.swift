//
//  CreatePasswordView.swift
//  Instagramxxx
//
//  Created by Artak Mheryan on 18.08.23.
//

import SwiftUI

struct CreatePasswordView: View {
    @State private var password : String = ""
    @Environment(\.dismiss) var dismiss
    var body: some View {
        NavigationStack{
            VStack( spacing: 20){
                Text("Create password")
                    .font(.title2)
                    .fontWeight(.bold)
                    .padding(.top)
                Text("your password must be least 6 characters in lenght")
                    .font(.footnote)
                    .foregroundColor(.gray)
                    .multilineTextAlignment(.center)
                    .padding(.horizontal,24)
                
                
                SecureField("Email", text: $password)
                    .autocapitalization(.none)
                    .font(.subheadline)
                    .padding(12)
                    .background(Color(.systemGray6))
                    .cornerRadius(10)
                    .padding(.horizontal,24)
                    .padding(.top)
                
                NavigationLink {
                 CompleteSignUpView()
                    .navigationBarBackButtonHidden(true)
                } label: {
                    Text("Login")
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
}
struct CreatePasswordView_Previews: PreviewProvider {
    static var previews: some View {
        CreatePasswordView()
    }
}
