//
//  TraningVZHstack.swift
//  Instagramxxx
//
//  Created by Artak Mheryan on 08.08.23.
//


import SwiftUI



import SwiftUI

struct ClockView: View {
    @State private var currentTime = Date()

    private var timer: Timer {
        Timer.scheduledTimer(withTimeInterval: 1, repeats: true) { _ in
            currentTime = Date()
        }
    }

    var body: some View {
        VStack {
            Text(currentTime, style: .time)
                .font(.largeTitle)
                .fontWeight(.bold)
                .padding()

            ZStack {
                Circle()
                    .stroke(Color.blue, lineWidth: 4)
                    .frame(width: 250, height: 250)

                ForEach(0..<12) { hour in
                    let angle = Double(hour) * 30.0

                    Rectangle()
                        .foregroundColor(Color.black)
                        .frame(width: hour % 3 == 0 ? 4 : 2, height: hour % 3 == 0 ? 16 : 8)
                        .offset(y: -80)
                        .rotationEffect(.degrees(angle))
                }

                ClockHand(color: .blue, width: 4, height: 80, rotation: Double(Calendar.current.component(.hour, from: currentTime)) * 30 + Double(Calendar.current.component(.minute, from: currentTime)) * 0.5)

                ClockHand(color: .green, width: 4, height: 120, rotation: Double(Calendar.current.component(.minute, from: currentTime)) * 6 + Double(Calendar.current.component(.second, from: currentTime)) * 0.1)

                ClockHand(color: .red, width: 2, height: 140, rotation: Double(Calendar.current.component(.second, from: currentTime)) * 6)
            }
        }
        .onAppear(perform: {
            _ = self.timer
        })
    }
}

struct ClockHand: View {
    var color: Color
    var width: CGFloat
    var height: CGFloat
    var rotation: Double

    var body: some View {
        Rectangle()
            .foregroundColor(color)
            .frame(width: width, height: height)
            .offset(y: -height / 2)
            .rotationEffect(.degrees(rotation))
    }
}

struct TraningVZHstack_reviews: PreviewProvider {
    static var previews: some View {
        ClockView()
    }
}
