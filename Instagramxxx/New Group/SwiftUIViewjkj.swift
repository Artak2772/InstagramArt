//
//  SwiftUIViewjkj.swift
//  Instagramxxx
//
//  Created by Artak Mheryan on 12.08.23.
//

import SwiftUI

struct SwiftUIViewjkj: View {
    var body: some View {
        ZStack(alignment: .leading){
            ScrollView {
                ForEach(0...30 ,id: \.self) { index in
                    VStack {
                        Rectangle()
                            .fill(Color.gray)
                            .frame(width: 200, height: 200)
                            .cornerRadius(20)
                            .shadow(radius: 15)
                        
                        
                    }
                }
                
            }
        }
    }
}
struct SwiftUIViewjkj_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIViewjkj()
    }
}
