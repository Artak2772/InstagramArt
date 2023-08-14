//
//  LoginView.swift
//  Instagramxxx
//
//  Created by Artak Mheryan on 14.08.23.
//

import SwiftUI

struct LoginView: View {
    @State private var Login : String = ""
    @State private var Password : String = ""
    
    
    var body: some View {
        NavigationStack {
            VStack {
                Image("instagram")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 260, height: 200 )
                
                VStack {
                    TextField("Enter Your email", text: $Login)
                        .autocorrectionDisabled()
                        .font(.headline)
                        .padding(12)
                        .background(Color(.systemGray6))
                        .cornerRadius(10)
                        .padding(.horizontal,12)
                    
                    SecureField("Enter Your Password", text: $Password)
                        .autocorrectionDisabled()
                        .font(.headline)
                        .padding(12)
                        .background(Color(.systemGray6))
                        .cornerRadius(10)
                        .padding(.horizontal,12)
                    
                    
                    
                }
                Button {
                    print("show forgot password")
                } label: {
                    Text("Show forgot password")
                        .font(.footnote)
                        .fontWeight(.semibold)
                        .padding(.top)
                        .padding(.top, 28)
                    
                }
                .frame(maxWidth: .infinity, alignment: .trailing)
                .padding()

                Button {
                    print("login")
                } label: {
                    Text("Login")
                        .font(.headline)
                        .fontWeight(.semibold)
                        .foregroundColor(.white)
                        .frame(width: 360, height: 40)
                        .background(Color.blue)
                        .cornerRadius(10)
                }
                .padding(.vertical)
                
                
                
                
            }
            
        }
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
