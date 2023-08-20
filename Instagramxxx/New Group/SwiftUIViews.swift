import SwiftUI

struct MatrixAnimationView: View {
    let columns = 30
    let rows = 20
    let animationInterval: TimeInterval = 0.1

    @State private var letters: [[Character]] = []

    private let matrixCharacters: [Character] = Array("ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789")

    private var randomCharacter: Character {
        matrixCharacters.randomElement() ?? "A"
    }

    var body: some View {
        GeometryReader { geometry in
            ZStack {
                Color.black.edgesIgnoringSafeArea(.all)

                ForEach(0..<rows, id: \.self) { row in
                    HStack(spacing: 0) {
                        ForEach(0..<columns, id: \.self) { column in
                            Text(String(letters[row][column]))
                                .foregroundColor(Color.green)
                                .opacity(Double.random(in: 0.1...0.5))
                                .offset(y: CGFloat.random(in: -30...30))
                                .animation(Animation.linear(duration: animationInterval).repeatForever(autoreverses: false).delay(Double.random(in: 0...animationInterval)))
                                .frame(maxWidth: geometry.size.width / CGFloat(columns))
                                .frame(maxHeight: UIScreen.main.bounds.height / CGFloat(rows))
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
            }
        }
    }
}

struct MatrixAnimationView_Previews: PreviewProvider {
    static var previews: some View {
        MatrixAnimationView()
    }
}
