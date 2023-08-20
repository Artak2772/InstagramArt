//
//  CompleteSignUpView.swift
//  Instagramxxx
//
//  Created by Artak Mheryan on 18.08.23.
//

import SwiftUI

struct CompleteSignUpView: View {
    
    @Environment(\.dismiss) var dismiss
    var body: some View {
        VStack( spacing: 12){
            Spacer()
            Text("Welcome to Instagram, Artak.Mheryan")
                .font(.title2)
                .fontWeight(.bold)
                .padding(.top)
                .multilineTextAlignment(.center)
            Text("you'll use this email to sign in to in your Account")
                .font(.footnote)
                .foregroundColor(.gray)
                .multilineTextAlignment(.center)
                .padding(.horizontal,24)
            
            
            
            
            Button {
                print("complete sign up")
            } label: {
                Text("Complete sign up")
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
struct CompleteSignUpView_Previews: PreviewProvider {
    static var previews: some View {
        CompleteSignUpView()
    }
}
