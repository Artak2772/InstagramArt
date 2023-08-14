//
//  SwiftUIVieww.swift
//  Instagramxxx
//
//  Created by Artak Mheryan on 11.08.23.
//




/*
struct MatrixAnimationView: View {
    let columns = 30
    let rows = 20
    
    @State private var letters: [[Character]] = []
    @State private var animationIndexes: [Int] = []
    
    private let matrixCharacters: [Character] = Array("ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789")
    
    private var randomCharacter: Character {
        matrixCharacters.randomElement() ?? "A"
    }
    
    private var animationDuration: Double {
        Double.random(in: 0.05...0.2)
    }
    
    private var animationDelay: Double {
        Double.random(in: 0...0.1)
    }
    
    private var randomOpacity: Double {
        Double.random(in: 0.1...0.5)
    }
    
    private var animation: Animation {
        Animation.linear(duration: animationDuration)
            .repeatForever(autoreverses: false)
    }
    
    var body: some View {
        ZStack {
            Color.black.edgesIgnoringSafeArea(.all)
            
            ForEach(0..<rows, id: \.self) { row in
                HStack(spacing: 0) {
                    ForEach(0..<columns, id: \.self) { column in
                        Text(String(letters[row][column]))
                            .foregroundColor(Color.green)
                            .opacity(animationIndexes.contains(column) ? randomOpacity : 0)
                            .offset(y: animationIndexes.contains(column) ? 0 : -30)
                            .animation(animation.delay(animationDelay))
                    }
                }
            }
        }
        .onAppear {
            for _ in 0..<rows {
                var rowLetters: [Character] = []
                for _ in 0..<columns {
                    rowLetters.append(randomCharacter)
                }
                letters.append(rowLetters)
            }
            
            let timer = Timer.scheduledTimer(withTimeInterval: animationDuration * Double(columns), repeats: true) { _ in
                animationIndexes.append(Int.random(in: 0..<columns))
                DispatchQueue.main.asyncAfter(deadline: .now() + animationDuration) {
                    animationIndexes.removeFirst()
                }
            }
            
            RunLoop.current.add(timer, forMode: .common)
        }
    }
}

struct MatrixAnimationView_Previews: PreviewProvider {
    static var previews: some View {
        MatrixAnimationView()
    }
}
*/
