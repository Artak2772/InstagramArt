//
//  IGTextFieldModifier.swift
//  Instagramxxx
//
//  Created by Artak Mheryan on 15.08.23.
//

import SwiftUI



struct IgTextFieldModifier : ViewModifier {
    func body(content: Content) -> some View {
        content
        .font(.headline)
        .padding(12)
        .background(Color(.systemGray6))
        .cornerRadius(10)
        .padding(.horizontal,12)
    }
}
