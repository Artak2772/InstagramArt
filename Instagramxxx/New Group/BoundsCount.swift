//
//  BoundsCount.swift
//  Instagramxxx
//
//  Created by Artak Mheryan on 16.08.23.
//

import SwiftUI

struct BoundsCount: View {
    var body: some View {
        ZStack{
            Rectangle()
                .frame(width: 3, height: (UIScreen.main.bounds.height / 2) )
            HStack{
                Rectangle()
                    .frame(width: (UIScreen.main.nativeBounds.height), height: 3)
                 
             }
            }
          }
         }
struct BoundsCount_Previews: PreviewProvider {
    static var previews: some View {
        BoundsCount()
    }
}
