//
//  SwiftUIView.swift
//  Instagramxxx
//
//  Created by Artak Mheryan on 11.08.23.
//

import SwiftUI

struct SwiftUIView: View {
    var body: some View {
        VStack{
            Rectangle()
                
                .frame(width: 38, height: 38)
            Rectangle()
                
                .frame(width: 10)
            Rectangle()
                
                .frame(height: 10)
            Rectangle()
                .frame(maxWidth: 10)
                  Text("ho")
            Rectangle()
                .frame(maxWidth: 10)
            HStack{
                Rectangle()
                    .frame(maxHeight: 3)
                    .foregroundColor(.gray)
                Text("OG")
                Rectangle()
                    .frame(maxHeight: 3)
                    .foregroundColor(.gray)
            }
            
         
            
            
        }
    }
}

struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIView()
    }
}
