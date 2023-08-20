//
//  SwiftUIViewjkj.swift
//  Instagramxxx
//
//  Created by Artak Mheryan on 12.08.23.
//

import SwiftUI

struct SwiftUIViewjkj: View {
    var body: some View {
        VStack {
            Text(" Body")
                .font(.body)
            Text(" callout")
                .font(.callout)
            Text(" caption")
                .font(.caption)
            Text(" caption2")
                .font(.caption2)
            Text(" footnote")
                .font(.footnote)
            Text(" headline")
                .font(.headline)
            Text(" largeTitle")
                .font(.largeTitle)
            Text(" subheadline")
                .font(.subheadline)
            Text("title")
                .font(.title)
            VStack {
                Text(" title2")
                    .font(.title2)
                Text(" title2")
                    .font(.title3)
                
                
                Spacer()
                Text(" black")
                    .fontWeight(.black)
                Text(" bold")
                    .fontWeight(.bold)
                VStack {
                    Text(" heavy")
                        .fontWeight(.heavy)
                }
                Text(" light")
                    .fontWeight(.light)
                Text(" medium")
                    .fontWeight(.medium)
                Text(" regular")
                    .fontWeight(.regular)
                VStack {
                    Text("semibold")
                        .fontWeight(.semibold)
                    Text(" thin")
                        .fontWeight(.thin)
                    Text(" ultraLight")
                        .fontWeight(.ultraLight)
                    
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
