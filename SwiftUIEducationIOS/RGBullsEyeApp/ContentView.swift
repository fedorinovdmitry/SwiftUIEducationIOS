//
//  ContentView.swift
//  SwiftUIEducationIOS
//
//  Created by Дмитрий Федоринов on 12.06.2022.
//

import SwiftUI

struct ContentView: View {
    
    @State var game = Game()
    @State var guess: RGB
    @State var showScore = false
    
    let circleSize: CGFloat = 0.275
    let labelHeight: CGFloat = 0.06
    let labelWidth: CGFloat = 0.53
    let buttonWidth: CGFloat = 0.87
    
    var body: some View {
        GeometryReader { proxy in
            ZStack {
                Color.element
                    .edgesIgnoringSafeArea(.all)
                VStack {
                    ColorCircle(rgb: game.target, size: proxy.size.height * circleSize)
                    if !showScore {
                      BevelText(text: "R: ??? G: ??? B: ???",
                                width: proxy.size.width * labelWidth,
                                height: proxy.size.height * labelHeight)
                    } else {
                      BevelText(text: game.target.intString(),
                                width: proxy.size.width * labelWidth,
                                height: proxy.size.height * labelHeight)
                    }
                    ColorCircle(rgb: guess, size: proxy.size.height * circleSize)
                    BevelText(text: guess.intString(),
                              width: proxy.size.width * labelWidth,
                              height: proxy.size.height * labelHeight)

                    CollorSlider(value: $guess.red, trackColor: .red)
                    CollorSlider(value: $guess.green, trackColor: .green)
                    CollorSlider(value: $guess.blue, trackColor: .blue)
                    Button("Hit Me!"){
                        showScore = true
                        game.check(guess: guess)
                    }
                    .alert(isPresented: $showScore) {
                        Alert(
                            title: Text("Your Score"),
                            message: Text(String(game.scoreRound)),
                            dismissButton: .default(Text("OK")) {
                                game.startNewRound()
                                guess = RGB()
                            })
                    }
                    .buttonStyle(NeuButtonStyle(width: proxy.size.width * buttonWidth,
                                                height: proxy.size.height * labelHeight))
                }
                .font(.headline)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView(guess: RGB())
                .previewDevice("iPhone 13 Pro Max")
//            ContentView(guess: RGB())
//                .preferredColorScheme(.dark)
            ContentView(guess: RGB())
                .previewDevice("iPhone 8")
        }
    }
}

struct CollorSlider: View {
    @Binding var value: Double
    var trackColor: Color
    
    var body: some View {
        HStack {
            Text("0")
            Slider(value: $value)
                .accentColor(trackColor)
            Text("255")
        }
        .padding(.horizontal)
        .font(.subheadline)
    }
}
