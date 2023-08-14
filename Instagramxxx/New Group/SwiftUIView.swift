//
//  SwiftUIView.swift
//  Instagramxxx
//
//  Created by Artak Mheryan on 11.08.23.
//

import SwiftUI

struct SwiftUIView: View {
    var body: some View {
        ZStack{
            Circle()
                .stroke(Color.red,lineWidth: 3)
                .frame(width: 380, height: 380)
            Circle()
                .stroke(Color.blue,lineWidth: 3)
                .frame(width: 370, height: 370)
            Circle()
                .stroke(Color.orange,lineWidth: 3)
                .frame(width: 360, height: 360)
            Circle()
                .stroke(Color.black
                    ,lineWidth: 3)
                .frame(width: 350, height: 350)
            Circle()
                .stroke(Color.clear,lineWidth: 3)
                .frame(width: 340, height: 340)
            Circle()
                .stroke(Color.primary,lineWidth: 3)
                .frame(width: 330, height: 330)
            Circle()
                .stroke(Color.blue,lineWidth: 3)
                .frame(width: 320, height: 320)
            
            
            
        }
    }
}

struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIView()
    }
}
